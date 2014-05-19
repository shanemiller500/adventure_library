

class LibrariesWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  
  def perform(library_id)
    library = Library.find(library_id)
    response = Typhoeus.get("#{library.url}/libraries.json")
    @libraries = JSON.parse(response.body)

    @libraries['libraries'].each do |l|
      if !Library.find_by(url: l['url']).exists?
        Library.create(url: l['url'])
      end
       AdventuresWorker.perform_async(l.id)
    end
  end
end


def create
    @library = Library.create(library_params)
    if @library.save
        LibrariesWorker.perform_async(library.id)
        redirect_to root_path
    else
      flash[:errors] = @library.errors.full_messages
      render :new
    end
  end

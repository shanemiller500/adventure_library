class LibrariesWorker
  include Sidekiq::Worker

  def perform(url)

    request = Typhoeus.get(url+"/libraries.json")
    result = JSON.parse(request.body)

    unless Library.find_by(url: url)
      Library.create(url: url) 
    end

    result["libraries"].each do |library|
      perform(library['url'])
    end
  end

end
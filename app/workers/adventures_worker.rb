class AdventuresWorker
  include Sidekiq::Worker

  def perform id
    library = Library.find(library_id)
    if library
      request = Typhoeus.get(library.url+"/adventures.json")
      result = JSON.parse(request.body)

      if result
        result['adventures'].each do |adventure|
          existing_story = Adventure.find_by(guid: adventure["guid"])
          binding.pry
          if existing_story
            # pages = adventure['pages']
            # adventure.['pages'].delete
            # existing_story.update_attributes(adventure)
            
          else
            library.adventures.create(adventure)
          end
        end
      end
    end
end

end
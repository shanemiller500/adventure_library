class LibrariesController < ApplicationController

  def index
    @libraries = Library.all
    respond_to do |f|
      f.html
      f.json { render :json => { :libraries => @libraries.as_json( only: :url )}}
    end
  end

  def new
    @library = Library.new
  end

  def show
    @library = Library.all
  end

  def create
    more_libraries = params.require(:library).permit(:url)
    library = Library.find_by(url: :more_libraries)
    LibrariesWorker.perform_async(more_libraries)
    redirect_to "/adventures"
  end

end

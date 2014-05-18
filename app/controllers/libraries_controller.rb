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
    library_params = params.require(:library).permit(:url)
    binding.pry
     Library.create(library_params) 
    LibrariesWorker.perform_async(library_params[:url])
    redirect_to "/adventures"
  end

end

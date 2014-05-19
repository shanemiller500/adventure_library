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

    @library = Library.create(library_params)
    if @library.save
      LibrariesWorker.perform_async(@library.id)
      redirect_to libraries_path
    else
      flash[:errors] = @library.errors.full_messages
      render :new
    end
 
  end

  private
    def library_params
      params.require(:library).permit(:url)
    end

end

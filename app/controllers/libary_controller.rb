class LibaryController < ApplicationController

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
end

class PagesController < ApplicationController
  # before_action :load_adventure

  def index
    
  end
  
def show
    adventure = Adventure.find(params[:adventure_id])
    @page = adventure.pages.find(params[:id])
  end


end

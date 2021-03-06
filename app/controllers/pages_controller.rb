class PagesController < ApplicationController
  # before_action :load_adventure

  def index
    @pages = @adventure.pages.all
  end
  
def show
    adventure = Adventure.find(params[:adventure_id])
    @page = adventure.pages.find(params[:id])
  end

  def new
    @pages = @adventure.pages.new
  end

  def create
    @page = @adventure.pages.new(page_params)
    @page.adventure_id = @adventure.id
    if @page.save
      if @page.name == "end"
        redirect_to root_path
      else
        redirect_to new_adventure_page_path(@adventure)
      end
    else
      flash[:errors] = @page.errors.full_messages
      render :new
    end
  end

  private
    def page_params
      params.require(:page).permit(:name, :text)
    end

    def load_adventure
      @adventure = Adventure.find(params[:adventure_id])
    end


end

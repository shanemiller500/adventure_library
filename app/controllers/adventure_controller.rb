class AdventureController < ApplicationController

  def index
    @adventures = Adventure.all
    @local_adventures = Adventure.where(library_id: nil)

    respond_to do |f|
      f.json { render json: {adventures: @local_adventures.as_json( 
       except: [:id, :library_id],
       include: {:pages => {except: :id}})} }
    end
  end

  def new
    @adventure = Adventure.new
  end

  def create
    adventure = Adventure.find(params_id)
    reidrect_to adventure_path
  end 

  def update
    
  end

  def show
    @adventure = Adventure.find(params[:id])
  end

  def edit
    
  end

  def destory
    
  end
end

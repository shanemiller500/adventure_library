class AdventureController < ApplicationController

  def index
    @adventures = Adventures.all
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

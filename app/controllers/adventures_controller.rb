class AdventuresController < ApplicationController

  def index
    @adventures = Adventure.all
    @local_adventures = Adventure.where(library_id: nil)

    respond_to do |f|
      f.html
      f.json { render json: {adventures: @local_adventures.as_json( 
       except: [:id, :library_id],
       include: {:pages => {except: :id}})} }
    end
  end

  def new
    @adventure = Adventure.new
  end

  def create
    adventure = params.require(:adventure).permit(:title, :author, :pages_attributes => [:name, :text])
    adv = Adventure.create(adventure)
    adv.update_attributes(guid: SecureRandom.urlsafe_base64(10).to_s)
    binding.pry
    redirect_to adventures_path
  end 

  def update
    
  end

  def show
    @adventure = Adventure.find(params[:id])
  end

  def edit
    
  end

  def destroy
    
  end

  private
  def adventure_params
    params.require(:adventure).permit(:title, :author, :pages_attributes=>[:name, :text], :libraries_attributes=>[:url])
  end
  
end

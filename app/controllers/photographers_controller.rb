class PhotographersController < ApplicationController

  def index
    @photographers = Photographer.all
  end
  
  def new
    @photographer = Photographer.new
  end
  
  def create
    @photographer = Photographer.new(params[:photographer])
    
    if @photographer.save
      PhotographerMailer.delay(run_at: 1.minute.from_now).welcome(@photographer)
      redirect_to photographer_path(@photographer.id), :notice => "Your account has been created."
    else
      render "new"
    end
  end
  
  def edit
    @photographer = Photographer.find(params[:id])
  end
  
  def update
    @photographer = Photographer.find(params[:id])
    
    if @photographer.update_attributes(params[:photographer])
      redirect_to photographer_path(@photographer.id), :notice => "Your account has been updated."
    else
      render "edit"
    end
  end
  
  def show
    @photographer = Photographer.find(params[:id])
  end
  
  def destroy
    @photographer = Photographer.find(params[:id])
    PhotographerMailer.delay(run_at: 1.minute.from_now).delete(@photographer)
    @photographer.delete
    redirect_to photographers_path, :notice => "Your account has been deleted."
  end
  
end

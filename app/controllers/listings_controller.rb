class ListingsController < ApplicationController
  
  def index
    @listings = Listing.all
    @categories = Category.all
  end
  
  def new
    @listings = Listing.all
    @categories = Category.all
    @listing = Listing.new
  end
  
  def create
    @listing = Listing.new(params[:listing])
    
    if @listing.save
      redirect_to listing_path(@listing.id), :notice => "Creating listing."
    else
      render "new"
    end
    
  end
  
  def edit
    @listing = Listing.find(params[:id])
  end
  
  def update
    @listing = Listing.find(params[:id])
    
    if @listing.update_attributes(params[:listing])
      redirect_to listing_path(@listing.id), :notice => "Updating listing."
    else
      render "edit"
    end
  end
  
  def show
    @listing = Listing.find(params[:id])
  end
  
  def destroy
    @listing = Listing.find(params[:id])
  end

end

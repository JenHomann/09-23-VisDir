class Listing < ActiveRecord::Base
  attr_accessible :budget, :category_id, :image, :location, :photographer_id
  
  belongs_to :photographer
  belongs_to :category
  
  mount_uploader :image, ImageUploader
end
class Listing < ActiveRecord::Base
  attr_accessible :budget, :category_id, :image, :location, :photographer_id
end

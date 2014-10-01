class Favorite < ActiveRecord::Base
  attr_accessible :customer_id, :photographer_id
  
  belongs_to :customer
  belongs_to :photographer
  
end
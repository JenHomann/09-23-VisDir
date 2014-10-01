class Favorite < ActiveRecord::Base
  attr_accessible :customer_id, :photographer_id
  
  validates :customer_id, presence: true
  validates :photographer_id, presence: true
  
  belongs_to :customer
  belongs_to :photographer
  
end
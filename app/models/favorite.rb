class Favorite < ActiveRecord::Base
  attr_accessible :customer_id, :listing_id
  
  validates :customer_id, presence: true
  validates :listing_id, presence: true
  
  belongs_to :customer
  belongs_to :listing
  
end
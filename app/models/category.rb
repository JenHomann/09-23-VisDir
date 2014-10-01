class Category < ActiveRecord::Base
  attr_accessible :name
  
  has_many :listings
  has_many :photographers, through: :listings
  
end

class Category < ActiveRecord::Base
  attr_accessible :name
  
  validates :name, presence: true
  validates :name, uniqueness: true
  
  has_many :listings
  has_many :photographers, through: :listings
  
end

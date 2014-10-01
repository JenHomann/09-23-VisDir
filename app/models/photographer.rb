class Photographer < ActiveRecord::Base
  attr_accessible :name, :pro_status
  
  has_many :favorites
  has_many :listings
  has_many :customers, through: :favorites
  has_many :categories, through: :listings
end
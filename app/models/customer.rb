class Customer < ActiveRecord::Base
  attr_accessible :ip_address
  
  has_many :favorites
  has_many :photographers, through: :favorites
  
end
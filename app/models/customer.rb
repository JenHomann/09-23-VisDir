class Customer < ActiveRecord::Base
  attr_accessible :ip_address
  
  has_many :favorites
  has_many :listings, through: :favorites
  
  def fav_count
    count = 0

    favorites.each { |f| count += 1 }

    count
  end
  
end
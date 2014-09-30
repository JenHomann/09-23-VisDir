class Favorite < ActiveRecord::Base
  attr_accessible :customer_id, :photographer_id
end

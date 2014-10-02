class Photographer < ActiveRecord::Base
  attr_accessible :name, :pro_status, :email, :password, :password_confirmation
  
  has_many :listings
  has_many :categories, through: :listings
  
  validates :email, :password, :password_confirmation, :pro_status, presence: true
  validates :email, uniqueness: true

  has_secure_password
  
  scope :pro_status?, where(:pro_status => true)
  scope :not_pro_status?, where(:pro_status => false)

end
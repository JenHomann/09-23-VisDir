class Photographer < ActiveRecord::Base
  attr_accessible :name, :pro_status
  
  has_many :favorites
  has_many :listings
  has_many :customers, through: :favorites
  has_many :categories, through: :listings
  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :pro_status, presence: true
  
  scope :pro_status, where (:pro_status => true)
  scope :not_pro_status, where (:pro_status => false)

end
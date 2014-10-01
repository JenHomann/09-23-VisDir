class Listing < ActiveRecord::Base
  attr_accessible :budget, :category_id, :image, :location, :photographer_id
  
  belongs_to :photographer
  belongs_to :category
  
  validates :budget, presence: true
  validates :location, presence: true
  validates :category_id, presence: true
  
  scope :high_budget, where (:budget => "high")
  scope :low_budget, where (:budget => "low")
  
  mount_uploader :image, ImageUploader
end
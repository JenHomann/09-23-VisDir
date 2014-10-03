class Listing < ActiveRecord::Base
  attr_accessible :budget, :category_id, :image, :location, :photographer_id, :photographer_attributes, :category_attributes
  
  belongs_to :photographer
  accepts_nested_attributes_for :photographer, :allow_destroy => true, :reject_if => :photographer_is_blank
  
  belongs_to :category
  accepts_nested_attributes_for :category, :allow_destroy => true, :reject_if => :category_is_blank
  
  has_many :favorites
  has_many :customers, through: :favorites
  
  validates :budget, presence: true
  validates :location, presence: true
  validates :category_id, presence: true
  
  scope :high_budget, where(:budget => "high")
  scope :low_budget, where(:budget => "low")
  
  mount_uploader :image, ImageUploader
  
  def category_is_blank(attrs)
    if attrs['name'].blank?
      true
    else
      false
    end
  end
  
  def photographer_is_blank(attrs)
    if attrs['name'].blank?
      true
    else
      false
    end
  end
  
end
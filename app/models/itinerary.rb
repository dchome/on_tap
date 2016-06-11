class Itinerary < ActiveRecord::Base
  belongs_to :creator, class_name: 'User'
  has_and_belongs_to_many :activities
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings
  
  validates :name, presence: true
  validates :description, length: {maximum: 300}
end

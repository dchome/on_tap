class Activity < ActiveRecord::Base
  has_and_belongs_to_many :itineraries
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

  validates :name, presence: true
end

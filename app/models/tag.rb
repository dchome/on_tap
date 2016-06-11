class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :activities, through: :taggings, source: :taggable, source_type: 'Activity'
  has_many :itineraries, through: :taggings, source: :taggable, source_type: 'Itinerary'
end

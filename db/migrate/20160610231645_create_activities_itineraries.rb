class CreateActivitiesItineraries < ActiveRecord::Migration
  def change
    create_table :activities_itineraries do |t|
      t.integer :activity_id, null: false
      t.integer :itinerary_id, null: false
    end
  end
end

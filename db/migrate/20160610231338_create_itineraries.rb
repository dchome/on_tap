class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.integer :creator_id
      t.string :name, null: false
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.string :photo_url

      t.timestamps null: false
    end
  end
end

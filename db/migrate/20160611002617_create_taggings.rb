class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :tag_id
      t.references :taggable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
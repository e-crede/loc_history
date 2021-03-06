class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :description
      t.time :duration
      t.string :gps_coords
      t.string :gps_file
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

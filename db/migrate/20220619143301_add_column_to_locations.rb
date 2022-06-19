class AddColumnToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :lat, :float
    add_column :locations, :lon, :float
    add_column :locations, :sat, :string
    add_column :locations, :desc, :string
    add_column :locations, :alt, :float
    add_column :locations, :acc, :float
    add_column :locations, :dir, :string
    add_column :locations, :prov, :string
    add_column :locations, :spd, :string
    add_column :locations, :timestamp, :integer
    add_column :locations, :timeoffset, :date
    add_column :locations, :time, :date
    add_column :locations, :starttimestamp, :integer
    add_column :locations, :date, :date
    add_column :locations, :batt, :string
    add_column :locations, :ischarging, :string
    add_column :locations, :aid, :string
    add_column :locations, :ser, :string
    add_column :locations, :act, :string
    add_column :locations, :filename, :string
    add_column :locations, :profile, :string
    add_column :locations, :hdop, :string
    add_column :locations, :vdop, :string
    add_column :locations, :pdop, :string
    add_column :locations, :dist, :string
  end
end

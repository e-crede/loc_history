json.extract! location, :id, :name, :description, :duration, :gps_coords, :gps_file, :user_id, :created_at, :updated_at
json.url location_url(location, format: :json)

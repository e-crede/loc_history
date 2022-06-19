class Location < ApplicationRecord
  belongs_to :user
  mount_uploader :gps_file, GpsRouteUploader
end

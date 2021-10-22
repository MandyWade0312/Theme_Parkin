json.extract! ride, :id, :name, :description, :type_of_ride, :latitude, :longitude, :park_id, :created_at, :updated_at
json.url ride_url(ride, format: :json)

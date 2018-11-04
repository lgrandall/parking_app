json.extract! parking_meter, :id, :name, :lattitude, :longitude, :status, :created_at, :updated_at
json.url parking_meter_url(parking_meter, format: :json)

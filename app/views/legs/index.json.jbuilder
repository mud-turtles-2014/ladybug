json.array!(@legs) do |leg|
  json.extract! leg, :id, :location_id, :start_date, :end_date, :trip_id
  json.url leg_url(leg, format: :json)
end

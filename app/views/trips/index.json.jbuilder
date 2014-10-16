json.array!(@trips) do |trip|
  json.extract! trip, :id, :user_id, :name, :description, :budget, :is_published, :is_private
  json.url trip_url(trip, format: :json)
end

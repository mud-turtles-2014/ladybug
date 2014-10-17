json.array!(@buddies) do |buddy|
  json.extract! buddy, :id, :name
  json.url buddy_url(buddy, format: :json)
end

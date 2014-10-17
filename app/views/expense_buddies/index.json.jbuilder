json.array!(@expense_buddies) do |expense_buddy|
  json.extract! expense_buddy, :id, :buddy_id, :expense_id
  json.url expense_buddy_url(expense_buddy, format: :json)
end

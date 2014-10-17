json.array!(@expenses) do |expense|
  json.extract! expense, :id, :cost, :description, :category_id, :date, :leg_id
  json.url expense_url(expense, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :id, :username, :password_digest, :email, :first_name, :last_name
  json.url user_url(user, format: :json)
end

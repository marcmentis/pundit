json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :lastname, :email, :facility, :role
  json.url user_url(user, format: :json)
end

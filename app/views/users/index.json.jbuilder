json.array!(@users) do |user|
  json.extract! user, :id, :eid
  json.url user_url(user, format: :json)
end

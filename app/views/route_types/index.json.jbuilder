json.array!(@route_types) do |route_type|
  json.extract! route_type, :id, :name
  json.url route_type_url(route_type, format: :json)
end

json.array!(@route_sub_types) do |route_sub_type|
  json.extract! route_sub_type, :id, :name
  json.url route_sub_type_url(route_sub_type, format: :json)
end

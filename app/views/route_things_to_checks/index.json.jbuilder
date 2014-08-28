json.array!(@route_things_to_checks) do |route_things_to_check|
  json.extract! route_things_to_check, :id, :name
  json.url route_things_to_check_url(route_things_to_check, format: :json)
end

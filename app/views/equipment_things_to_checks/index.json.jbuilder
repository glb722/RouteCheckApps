json.array!(@equipment_things_to_checks) do |equipment_things_to_check|
  json.extract! equipment_things_to_check, :id, :name
  json.url equipment_things_to_check_url(equipment_things_to_check, format: :json)
end

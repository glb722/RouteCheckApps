json.array!(@equipment) do |equipment|
  json.extract! equipment, :id, :name, :location
  json.url equipment_url(equipment, format: :json)
end

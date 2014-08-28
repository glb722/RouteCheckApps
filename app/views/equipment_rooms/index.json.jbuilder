json.array!(@equipment_rooms) do |equipment_room|
  json.extract! equipment_room, :id
  json.url equipment_room_url(equipment_room, format: :json)
end

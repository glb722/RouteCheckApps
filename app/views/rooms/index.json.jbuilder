json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :building, :roomnumber
  json.url room_url(room, format: :json)
end

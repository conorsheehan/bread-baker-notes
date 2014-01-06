json.array!(@breads) do |bread|
  json.extract! bread, :id, :name, :rating, :date, :preferment, :room_temp, :water_temp
  json.url bread_url(bread, format: :json)
end

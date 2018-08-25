json.array!(@kachestvomoykas) do |kachestvomoyka|
  json.extract! kachestvomoyka, :id, :title, :description
  json.url kachestvomoyka_url(kachestvomoyka, format: :json)
end

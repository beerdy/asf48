json.array!(@baners) do |baner|
  json.extract! baner, :id
  json.url baner_url(baner, format: :json)
end

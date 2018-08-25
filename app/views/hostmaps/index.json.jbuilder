json.array!(@hostmaps) do |hostmap|
  json.extract! hostmap, :id, :title, :description
  json.url hostmap_url(hostmap, format: :json)
end

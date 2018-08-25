json.array!(@hostmoykas) do |hostmoyka|
  json.extract! hostmoyka, :id, :title, :description
  json.url hostmoyka_url(hostmoyka, format: :json)
end

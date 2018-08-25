json.array!(@hostgaranties) do |hostgaranty|
  json.extract! hostgaranty, :id, :title, :description
  json.url hostgaranty_url(hostgaranty, format: :json)
end

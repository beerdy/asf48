json.array!(@hostmaslos) do |hostmaslo|
  json.extract! hostmaslo, :id, :title, :description
  json.url hostmaslo_url(hostmaslo, format: :json)
end

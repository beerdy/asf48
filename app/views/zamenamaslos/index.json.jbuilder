json.array!(@zamenamaslos) do |zamenamaslo|
  json.extract! zamenamaslo, :id, :title, :description
  json.url zamenamaslo_url(zamenamaslo, format: :json)
end

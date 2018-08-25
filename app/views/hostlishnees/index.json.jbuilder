json.array!(@hostlishnees) do |hostlishnee|
  json.extract! hostlishnee, :id, :title, :description
  json.url hostlishnee_url(hostlishnee, format: :json)
end

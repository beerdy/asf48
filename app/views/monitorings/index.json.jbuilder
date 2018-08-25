json.array!(@monitorings) do |monitoring|
  json.extract! monitoring, :id, :title, :description
  json.url monitoring_url(monitoring, format: :json)
end

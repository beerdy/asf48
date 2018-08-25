json.array!(@shinniyservices) do |shinniyservice|
  json.extract! shinniyservice, :id, :title, :description
  json.url shinniyservice_url(shinniyservice, format: :json)
end

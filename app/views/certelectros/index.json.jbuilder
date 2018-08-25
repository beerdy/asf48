json.array!(@certelectros) do |certelectro|
  json.extract! certelectro, :id, :title, :description
  json.url certelectro_url(certelectro, format: :json)
end

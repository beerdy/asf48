json.array!(@certkapitals) do |certkapital|
  json.extract! certkapital, :id, :title, :description
  json.url certkapital_url(certkapital, format: :json)
end

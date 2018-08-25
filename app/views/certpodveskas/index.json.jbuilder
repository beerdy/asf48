json.array!(@certpodveskas) do |certpodveska|
  json.extract! certpodveska, :id, :title, :description
  json.url certpodveska_url(certpodveska, format: :json)
end

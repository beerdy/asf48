json.array!(@dozopravkas) do |dozopravka|
  json.extract! dozopravka, :id, :title, :description
  json.url dozopravka_url(dozopravka, format: :json)
end

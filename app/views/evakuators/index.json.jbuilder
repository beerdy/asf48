json.array!(@evakuators) do |evakuator|
  json.extract! evakuator, :id, :title, :description
  json.url evakuator_url(evakuator, format: :json)
end

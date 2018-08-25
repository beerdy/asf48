json.array!(@obsluzhivanies) do |obsluzhivany|
  json.extract! obsluzhivany, :id, :title, :description
  json.url obsluzhivany_url(obsluzhivany, format: :json)
end

json.array!(@kapitalremonts) do |kapitalremont|
  json.extract! kapitalremont, :id, :title, :description
  json.url kapitalremont_url(kapitalremont, format: :json)
end

json.array!(@akciis) do |akcii|
  json.extract! akcii, :id, :title, :description, :image_uid
  json.url akcii_url(akcii, format: :json)
end

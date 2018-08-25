json.array!(@photobooks) do |photobook|
  json.extract! photobook, :id, :title, :description, :image_uid
  json.url photobook_url(photobook, format: :json)
end

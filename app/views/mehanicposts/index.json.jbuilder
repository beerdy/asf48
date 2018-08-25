json.array!(@mehanicposts) do |mehanicpost|
  json.extract! mehanicpost, :id, :title, :description, :image_url
  json.url mehanicpost_url(mehanicpost, format: :json)
end

json.array!(@newposts) do |newpost|
  json.extract! newpost, :id, :title, :description
  json.url newpost_url(newpost, format: :json)
end

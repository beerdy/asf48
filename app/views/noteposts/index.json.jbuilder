json.array!(@noteposts) do |notepost|
  json.extract! notepost, :id, :title, :description
  json.url notepost_url(notepost, format: :json)
end

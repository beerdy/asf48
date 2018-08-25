json.array!(@hostcoffes) do |hostcoffe|
  json.extract! hostcoffe, :id, :title, :description
  json.url hostcoffe_url(hostcoffe, format: :json)
end

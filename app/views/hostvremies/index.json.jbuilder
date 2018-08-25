json.array!(@hostvremies) do |hostvremy|
  json.extract! hostvremy, :id, :title, :description
  json.url hostvremy_url(hostvremy, format: :json)
end

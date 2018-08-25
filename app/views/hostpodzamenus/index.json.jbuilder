json.array!(@hostpodzamenus) do |hostpodzamenu|
  json.extract! hostpodzamenu, :id, :title, :description
  json.url hostpodzamenu_url(hostpodzamenu, format: :json)
end

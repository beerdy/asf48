json.array!(@certobsluzhis) do |certobsluzhi|
  json.extract! certobsluzhi, :id, :title, :description
  json.url certobsluzhi_url(certobsluzhi, format: :json)
end

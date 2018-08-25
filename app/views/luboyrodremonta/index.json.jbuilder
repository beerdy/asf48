json.array!(@luboyrodremonta) do |luboyrodremontum|
  json.extract! luboyrodremontum, :id, :title, :description
  json.url luboyrodremontum_url(luboyrodremontum, format: :json)
end

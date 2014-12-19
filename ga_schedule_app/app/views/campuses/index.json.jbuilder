json.array!(@campuses) do |campus|
  json.extract! campus, :id, :name, :location
  json.url campus_url(campus, format: :json)
end

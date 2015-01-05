json.array!(@coursetypes) do |coursetype|
  json.extract! coursetype, :id, :name, :description, :icon, :intensity
  json.url coursetype_url(coursetype, format: :json)
end

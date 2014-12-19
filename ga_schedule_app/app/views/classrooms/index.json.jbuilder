json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :name, :capacity
  json.url classroom_url(classroom, format: :json)
end

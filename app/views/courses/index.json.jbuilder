json.array!(@courses) do |course|
  json.extract! course, :id, :name, :start_date, :end_date, :coursetype_id
  json.url course_url(course, format: :json)
end

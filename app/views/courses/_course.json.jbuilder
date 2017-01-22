json.extract! course, :id, :title, :content, :duration, :school_id, :price, :created_at, :updated_at
json.url course_url(course, format: :json)
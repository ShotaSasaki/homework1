json.extract! user, :id, :screen_name, :password, :profile_image_path, :created_at, :updated_at
json.url user_url(user, format: :json)

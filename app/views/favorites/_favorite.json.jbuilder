json.extract! favorite, :id, :fav_author, :fav_content, :user_id, :message_id, :created_at, :updated_at
json.url favorite_url(favorite, format: :json)
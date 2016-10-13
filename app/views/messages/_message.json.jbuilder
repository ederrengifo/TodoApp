json.extract! message, :id, :content, :author, :user_id, :message_id, :created_at, :updated_at
json.url message_url(message, format: :json)
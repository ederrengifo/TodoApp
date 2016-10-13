json.extract! board, :id, :board_title, :topic, :messages, :created_at, :updated_at
json.url board_url(board, format: :json)
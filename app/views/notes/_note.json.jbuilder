json.extract! note, :id, :noteTitle, :created_at, :updated_at
json.url note_url(note, format: :json)
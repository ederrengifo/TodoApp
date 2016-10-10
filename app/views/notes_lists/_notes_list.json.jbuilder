json.extract! notes_list, :id, :codeTitle, :code, :created_at, :updated_at
json.url notes_list_url(notes_list, format: :json)
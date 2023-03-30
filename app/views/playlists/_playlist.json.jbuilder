json.extract! playlist, :id, :nome, :descricao, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)

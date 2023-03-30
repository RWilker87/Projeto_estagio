json.extract! musica, :id, :nome, :artista, :album, :duracao, :spotify_id, :created_at, :updated_at
json.url musica_url(musica, format: :json)

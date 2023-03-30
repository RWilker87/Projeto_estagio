json.extract! usuario, :id, :nome, :email, :senha, :data_de_nascimento, :genero, :spotify_token, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)

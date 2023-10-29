json.extract! carona, :id, :nome, :partida, :destino, :dia, :hora, :passageiros, :valor, :observacao, :created_at, :updated_at
json.url carona_url(carona, format: :json)

json.array!(@destinos) do |destino|
  json.extract! destino, :id, :ciudad, :n_aeropuerto
  json.url destino_url(destino, format: :json)
end

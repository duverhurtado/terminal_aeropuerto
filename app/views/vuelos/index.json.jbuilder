json.array!(@vuelos) do |vuelo|
  json.extract! vuelo, :id, :aerolinea_id, :itinerario_id, :capacidad, :modelo_avion, :num_vuelo
  json.url vuelo_url(vuelo, format: :json)
end

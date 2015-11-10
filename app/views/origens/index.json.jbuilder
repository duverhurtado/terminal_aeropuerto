json.array!(@origens) do |origen|
  json.extract! origen, :id, :ciudad, :n_aeropuerto
  json.url origen_url(origen, format: :json)
end

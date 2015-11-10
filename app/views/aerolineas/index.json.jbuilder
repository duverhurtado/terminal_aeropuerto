json.array!(@aerolineas) do |aerolinea|
  json.extract! aerolinea, :id, :nombre, :direccion, :telefono
  json.url aerolinea_url(aerolinea, format: :json)
end

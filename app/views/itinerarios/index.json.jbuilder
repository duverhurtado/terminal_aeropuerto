json.array!(@itinerarios) do |itinerario|
  json.extract! itinerario, :id, :codigo_it, :destino_id, :origen_id, :fecha, :hora
  json.url itinerario_url(itinerario, format: :json)
end

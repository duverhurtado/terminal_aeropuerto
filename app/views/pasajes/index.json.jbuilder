json.array!(@pasajes) do |pasaje|
  json.extract! pasaje, :id, :cliente_id, :vuelo_id, :clase_id, :asiento, :valor
  json.url pasaje_url(pasaje, format: :json)
end

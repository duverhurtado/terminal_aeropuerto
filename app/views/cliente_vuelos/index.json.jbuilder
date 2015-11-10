json.array!(@cliente_vuelos) do |cliente_vuelo|
  json.extract! cliente_vuelo, :id, :cliente_id, :vuelo_id
  json.url cliente_vuelo_url(cliente_vuelo, format: :json)
end

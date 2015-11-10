json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :rut, :nombre, :apellidos, :telefono, :email
  json.url cliente_url(cliente, format: :json)
end

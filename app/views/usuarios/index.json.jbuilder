json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :cliente_id, :password
  json.url usuario_url(usuario, format: :json)
end

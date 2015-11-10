json.array!(@clases) do |clase|
  json.extract! clase, :id, :t_clase
  json.url clase_url(clase, format: :json)
end

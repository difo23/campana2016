json.array!(@recintos) do |recinto|
  json.extract! recinto, :id, :nombre_recinto, :codigo_recinto, :nombre_encargado_recinto, :email_encargado_recinto, :celular_encargado_recinto, :cedula_encargado_recinto
  json.url recinto_url(recinto, format: :json)
end

json.array!(@inscrito_contactados) do |inscrito_contactado|
  json.extract! inscrito_contactado, :id, :nombre_inscrito, :cedula_inscrito, :celular_inscrito, :codigo_mesa, :edad_inscrito, :sexo_inscrito
  json.url inscrito_contactado_url(inscrito_contactado, format: :json)
end

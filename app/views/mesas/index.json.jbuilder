json.array!(@mesas) do |mesa|
  json.extract! mesa, :id, :codigo_mesa, :nombre_encargado_mesa, :cedula_encargado_mesa, :celular_encargado_mesa, :email_encargado_mesa, :nombre_delegado, :cedula_delegado, :celular_delegado, :String, :email_delegado, :nombre_suplente, :cedula_suplente, :celular_suplente, :email_suplente, :total_, :inscritos_anterio, :total_pld_anterior, :total_prd_anterior, :total_votos_validos_anterior, :total_votos_nulos_anterior, :total_votos_observados_anterior, :total_votos_emitidos_anterior, :total_inscritos
  json.url mesa_url(mesa, format: :json)
end

json.array!(@campanas) do |campana|
  json.extract! campana, :id, :year, :nombre_distrito_municipal, :codigo_distrito_municipal, :nombre_municipio, :codigo_municipio, :nombre_provincia, :codigo_provincia, :circuncripcion, :nombre_candidato, :posicion_candidatura, :cedula_candidato, :celular_candidato, :email_candidato, :nombre_director_electoral, :cedula_director_electoral, :celular_director_electoral, :email_director_electoral
  json.url campana_url(campana, format: :json)
end

class Campana
  include Mongoid::Document
  field :year, type: Integer
  field :nombre_distrito_municipal, type: String
  field :codigo_distrito_municipal, type: Integer
  field :nombre_municipio, type: String
  field :codigo_municipio, type: Integer
  field :nombre_provincia, type: String
  field :codigo_provincia, type: Integer
  field :circuncripcion, type: Integer
  field :nombre_candidato, type: String
  field :posicion_candidatura, type: String
  field :cedula_candidato, type: Float
  field :celular_candidato, type: String
  field :email_candidato, type: String
  field :nombre_director_electoral, type: String
  field :cedula_director_electoral, type: Float
  field :celular_director_electoral, type: String
  field :email_director_electoral, type: String

  embeds_many :recintos
end

class Recinto
  include Mongoid::Document
  field :nombre_recinto, type: String
  field :codigo_recinto, type: Integer
  field :nombre_encargado_recinto, type: String
  field :email_encargado_recinto, type: String
  field :celular_encargado_recinto, type: String
  field :cedula_encargado_recinto, type: Float

  embeds_many :mesas
  embedded_in :campana, :inverse_of => :recintos
end

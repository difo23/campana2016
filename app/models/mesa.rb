class Mesa
  include Mongoid::Document
  field :codigo_mesa, type: Integer
  field :nombre_encargado_mesa, type: String
  field :cedula_encargado_mesa, type: Float
  field :celular_encargado_mesa, type: String
  field :email_encargado_mesa, type: String
  field :nombre_delegado, type: String
  field :cedula_delegado, type: Float
  field :celular_delegado, type: String
  field :String, type: String
  field :email_delegado, type: String
  field :nombre_suplente, type: String
  field :cedula_suplente, type: Float
  field :celular_suplente, type: String
  field :email_suplente, type: String
  field :total_, type: String
  field :inscritos_anterio, type: Integer
  field :total_pld_anterior, type: Integer
  field :total_prd_anterior, type: Integer
  field :total_votos_validos_anterior, type: Integer
  field :total_votos_nulos_anterior, type: Integer
  field :total_votos_observados_anterior, type: Integer
  field :total_votos_emitidos_anterior, type: Integer
  field :total_inscritos, type: Integer

  embeds_many :inscrito_contactados
  embedded_in :recinto, :inverse_of => :mesas
end

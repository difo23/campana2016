class InscritoContactado
  include Mongoid::Document
  field :nombre_inscrito, type: String
  field :cedula_inscrito, type: Float
  field :celular_inscrito, type: String
  field :codigo_mesa, type: Integer
  field :edad_inscrito, type: Integer
  field :sexo_inscrito, type: Mongoid::Boolean

  embedded_in :mesa, :inverse_of => :inscrito_contactados
end

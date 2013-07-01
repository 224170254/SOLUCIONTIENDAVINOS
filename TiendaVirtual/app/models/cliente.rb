class Cliente < ActiveRecord::Base
  attr_accessible :Contrasena, :Direccion, :FechaNacimiento, :Movil, :NombreApellido, :RazonSocial, :Rut, :Telefono, :email, :estado
end

class Cliente < ActiveRecord::Base
  attr_accessible :Contrasena, :Direccion, :FechaNacimiento, :Movil, :NombreApellido, :RazonSocial, :Rut, :Telefono, :email, :estado
  
  
  validates :Rut, :Direccion,:email, :presence => { :message => ": Completar Dato" }
  validates :Rut, :format => { :with => /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i }  
end

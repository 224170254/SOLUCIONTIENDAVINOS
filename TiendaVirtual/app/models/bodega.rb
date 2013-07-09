class Bodega < ActiveRecord::Base
  attr_accessible :correo, :direccion, :nombre, :rut, :telefono1, :telefono2
   validates :rut, :nombre, :direccion,:correo, :presence => { :message => ": Completar Dato" }

validates :rut, :format => { :with => /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i }
  
end

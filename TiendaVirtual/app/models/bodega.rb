class Bodega < ActiveRecord::Base
  attr_accessible :correo, :direccion, :nombre, :rut, :telefono1, :telefono2
end

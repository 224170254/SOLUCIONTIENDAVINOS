class Producto < ActiveRecord::Base
  attr_accessible :Cata, :Descripcion, :Gastronomia, :Origen, :Temperatura, :TipoProducto, :anada, :capacidad, :comentario, :crianza, :idCategoria, :uva
end

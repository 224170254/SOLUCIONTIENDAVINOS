 class Producto < ActiveRecord::Base
  attr_accessible :Cata, :Descripcion, :Gastronomia, :Origen, :Temperatura, :TipoProducto, :anada, :capacidad, :comentario, :crianza, :idCategoria, :uva
  
    belongs_to :categoria, :foreign_key=>"idCategoria"
   # Se define una constante con tipos de 
  TIPOS = [["Vinos", "0"], ["Cajas", "1"]]

end

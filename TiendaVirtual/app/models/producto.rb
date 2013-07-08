 class Producto < ActiveRecord::Base
  attr_accessible :Cata, :Descripcion, :Gastronomia, :Origen, :Temperatura, :TipoProducto, :anada, :capacidad, :comentario, :crianza, :idCategoria, :uva, :imagen
  
    belongs_to :categoria, :foreign_key=>"idCategoria"
    
    validates :TipoProducto, :Descripcion, :idCategoria, :presence => { :message => ": Completar Dato" }
    
    validates :imagen, allow_blank: true, format: {with: %r{\.(gif|jpg|png)$}i,
               message: ': Archivo debe ser GIF, JPG o PNG .'}
    
   # Se define una constante con tipos de 
  TIPOS = [["Vinos", "0"], ["Cajas", "1"]]

end

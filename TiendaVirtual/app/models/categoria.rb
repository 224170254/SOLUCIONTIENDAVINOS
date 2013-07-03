class Categoria < ActiveRecord::Base
  attr_accessible :descripcion
  
  has_many :producto
end

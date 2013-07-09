class Formatoventum < ActiveRecord::Base
  attr_accessible :costoadicional, :descripcion, :unidades
  
      validates :costoadicional, :descripcion, :unidades, :presence => { :message => ": Completar Dato" }
      validates :unidades, :costoadicional,:numericality => {:only_integer => true, :less_or_equal => 10, :message => ": Ingresar Dato Numerico" }
end

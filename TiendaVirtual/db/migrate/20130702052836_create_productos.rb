class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.integer :TipoProducto
      t.string :Descripcion
      t.integer :capacidad
      t.text :comentario
      t.integer :idCategoria
      t.string :Origen
      t.string :Gastronomia
      t.string :Cata
      t.integer :Temperatura
      t.integer :anada
      t.string :crianza
      t.string :uva

      t.timestamps
    end
  end
end

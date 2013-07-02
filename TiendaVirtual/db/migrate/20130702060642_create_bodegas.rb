class CreateBodegas < ActiveRecord::Migration
  def change
    create_table :bodegas do |t|
      t.string :nombre
      t.string :direccion
      t.string :correo
      t.string :telefono1
      t.string :telefono2
      t.string :rut

      t.timestamps
    end
  end
end

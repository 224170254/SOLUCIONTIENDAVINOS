class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :Rut
      t.string :NombreApellido
      t.string :RazonSocial
      t.string :Direccion
      t.string :Telefono
      t.string :Movil
      t.date :FechaNacimiento
      t.string :email
      t.string :Contrasena
      t.integer :estado

      t.timestamps
    end
  end
end

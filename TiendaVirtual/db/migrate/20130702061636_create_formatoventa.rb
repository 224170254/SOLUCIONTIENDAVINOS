class CreateFormatoventa < ActiveRecord::Migration
  def change
    create_table :formatoventa do |t|
      t.string :descripcion
      t.integer :unidades
      t.integer :costoadicional

      t.timestamps
    end
  end
end

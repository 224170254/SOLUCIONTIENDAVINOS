class CreateMixproductos < ActiveRecord::Migration
  def change
    create_table :mixproductos do |t|
      t.integer :idmaestro
      t.integer :stock
      t.integer :precio
      t.integer :idformato
      t.integer :idformatoventa
      t.integer :idbodega

      t.timestamps
    end
  end
end

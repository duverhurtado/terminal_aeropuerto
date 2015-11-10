class CreatePasajes < ActiveRecord::Migration
  def change
    create_table :pasajes do |t|
      t.references :cliente, index: true
      t.references :vuelo, index: true
      t.references :clase, index: true
      t.string :asiento
      t.string :valor

      t.timestamps
    end
  end
end

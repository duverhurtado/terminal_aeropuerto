class CreateClienteVuelos < ActiveRecord::Migration
  def change
    create_table :cliente_vuelos do |t|
      t.references :cliente, index: true
      t.references :vuelo, index: true

      t.timestamps
    end
  end
end

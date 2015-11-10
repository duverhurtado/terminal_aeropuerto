class CreateVuelos < ActiveRecord::Migration
  def change
    create_table :vuelos do |t|
      t.references :aerolinea, index: true
      t.references :itinerario, index: true
      t.integer :capacidad
      t.string :modelo_avion
      t.string :num_vuelo

      t.timestamps
    end
  end
end

class CreateAerolineas < ActiveRecord::Migration
  def change
    create_table :aerolineas do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono

      t.timestamps
    end
  end
end

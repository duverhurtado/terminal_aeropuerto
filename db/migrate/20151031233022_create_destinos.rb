class CreateDestinos < ActiveRecord::Migration
  def change
    create_table :destinos do |t|
      t.string :ciudad
      t.string :n_aeropuerto

      t.timestamps
    end
  end
end

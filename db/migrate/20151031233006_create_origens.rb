class CreateOrigens < ActiveRecord::Migration
  def change
    create_table :origens do |t|
      t.string :ciudad
      t.string :n_aeropuerto

      t.timestamps
    end
  end
end

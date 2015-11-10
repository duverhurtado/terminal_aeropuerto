class CreateItinerarios < ActiveRecord::Migration
  def change
    create_table :itinerarios do |t|
      t.string :codigo_it
      t.references :destino, index: true
      t.references :origen, index: true
      t.date :fecha
      t.time :hora

      t.timestamps
    end
  end
end

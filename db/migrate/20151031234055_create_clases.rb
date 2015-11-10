class CreateClases < ActiveRecord::Migration
  def change
    create_table :clases do |t|
      t.string :t_clase

      t.timestamps
    end
  end
end

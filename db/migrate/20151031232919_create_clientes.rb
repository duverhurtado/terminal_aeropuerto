class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :nombre
      t.string :apellidos
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end
end

class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.references :cliente, index: true
      t.string :password

      t.timestamps
    end
  end
end

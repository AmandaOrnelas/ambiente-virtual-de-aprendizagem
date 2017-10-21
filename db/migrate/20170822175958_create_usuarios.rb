class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :login
      t.string :senha
      t.integer :nivel
      t.integer :codigo

      t.timestamps
    end
  end
end

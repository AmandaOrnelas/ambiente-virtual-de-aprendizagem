class CreateTempogastos < ActiveRecord::Migration[5.0]
  def change
    create_table :tempogastos do |t|
      t.string :nome
      t.string :tempo

      t.timestamps
    end
  end
end

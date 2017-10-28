class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :nausea
      t.integer :happiness
      t.integer :tickets
      t.integer :height
      t.string :password
      t.boolean :admin
      t.timestamps null: false
    end
  end
end
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_grade
      t.string :supplier
      t.string :product_name
      t.integer :basis_weight
      t.integer :width
      t.integer :length
      t.integer :renryo
      t.integer :inventory
      t.integer :product_id
      t.timestamps null: false
    end
  end
end

class AddTextToProducts < ActiveRecord::Migration
  def change
    add_column :products, :text, :text
  end
end

class AddWhomToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :whom, :string
  end
end

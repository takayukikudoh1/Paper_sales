class AddWhereToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :where, :string
  end
end

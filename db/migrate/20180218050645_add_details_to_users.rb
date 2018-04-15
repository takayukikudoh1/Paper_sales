class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :tel, :integer
    add_column :users, :fax, :integer
  end
end

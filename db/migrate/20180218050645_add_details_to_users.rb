class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company, :text
    add_column :users, :dept, :text
    add_column :users, :address, :text
    add_column :users, :name, :string
    add_column :users, :tel, :integer
    add_column :users, :fax, :integer
    add_column :users, :mail, :text
  end
end

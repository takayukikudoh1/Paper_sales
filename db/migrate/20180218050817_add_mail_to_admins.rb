class AddMailToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :mail, :text
  end
end

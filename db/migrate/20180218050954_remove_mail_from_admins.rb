class RemoveMailFromAdmins < ActiveRecord::Migration
  def change
    remove_column :admins, :mail, :text
  end
end

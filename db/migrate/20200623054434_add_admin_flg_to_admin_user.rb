class AddAdminFlgToAdminUser < ActiveRecord::Migration[6.0]
  def change
    add_column :admin_users, :admin_flg, :boolean
  end
end

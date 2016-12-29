class AddAdminFlagToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :booleen, default: false, null: false
  end
end

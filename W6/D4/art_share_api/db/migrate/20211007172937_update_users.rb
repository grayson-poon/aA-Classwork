class UpdateUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :email
    rename_column :users, :name, :username

    change_column :users, :username, :string, null: false, unique: true
  end
end

class AddNamesAddressAvatarImageColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :text
    add_column :users, :profile_pic, :text
  end
end

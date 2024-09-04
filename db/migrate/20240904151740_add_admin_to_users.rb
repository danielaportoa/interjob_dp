class AddAdminToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :nombre, :string
    add_column :users, :foto, :string
    add_column :users, :datos_relevantes, :text
  end
end

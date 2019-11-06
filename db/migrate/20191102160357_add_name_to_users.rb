class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :birthday, :date
    add_column :users, :balance, :float
    add_column :users, :is_adv, :boolean
    add_column :users, :is_admin, :boolean
  end
end

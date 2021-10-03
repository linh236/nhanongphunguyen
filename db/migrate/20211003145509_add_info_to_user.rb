class AddInfoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :full_name, :string
    add_column :users, :avata, :string
    add_column :users, :birth, :date
    add_column :users, :gender, :boolean, default: false
    add_column :users, :address, :string
  end
end

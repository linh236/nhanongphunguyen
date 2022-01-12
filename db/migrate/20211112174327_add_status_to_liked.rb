class AddStatusToLiked < ActiveRecord::Migration[5.2]
  def change
    add_column :likeds, :status, :boolean, default: false
  end
end

class AddImagesToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :images, :string, array: true
  end
end

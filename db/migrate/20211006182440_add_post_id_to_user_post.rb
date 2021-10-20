class AddPostIdToUserPost < ActiveRecord::Migration[5.2]
  def change
    add_column :user_posts, :post_id, :integer
  end
end

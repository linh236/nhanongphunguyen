class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :youtube_link
      t.string :facebook_link
      t.string :twitter_link
      t.string :tiktok_link

      t.timestamps
    end
  end
end

class Post < ApplicationRecord
  has_many_attached :images
  after_save :update_user_post
  has_many :user_posts
  
  def update_user_post 
    user_post = UserPost.create(post_id: self.id, user_id: self.user_id, show: true)
    if user_post.save
      puts "Update UserPost successfully"
    else 
      puts user_post.errors
    end
  end
end

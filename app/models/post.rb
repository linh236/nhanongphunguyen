class Post < ApplicationRecord
  has_many_attached :images
  after_save :update_user_post

  def update_user_post 
    if UserPost.create(post_id: self.id, user_id: self.user_id, show: true)
      puts "Update UserPost successfully"
    end
  end
end

module Api::V1
  class Post < ApiBase 
    has_many_attached :images
    after_save :create_user_post

    def create_user_post 
      if UserPost.create(post_id: self.id, user_id: self.user_id, show: true).save
        puts "Update UserPost successfully"
      end
    end
  end
end
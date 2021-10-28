
module Api::V1
  class UserPostsController < ApiBaseController
    def index 
      user_post = UserPost.order(created_at: :desc).paginate(page: params[:page], per_page: params[:per_page] || 20)
    end
  end
end
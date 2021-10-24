class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @user_posts = UserPost.order(created_at: :desc)
  end
end

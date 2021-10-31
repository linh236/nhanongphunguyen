class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  DEFAULT_PER_PAGE = 10
  DEFAULT_PAGE = 1
  def index
    page =  params[:page].present? ? params[:page] : DEFAULT_PAGE
    # @user_posts = UserPost.order(created_at: :desc)
    @user_posts = UserPost.order(created_at: :desc).paginate(page: page, per_page: DEFAULT_PER_PAGE)
    @current_user = current_user
    @slider_last = Slider.last
    @slider = Slider.new
  end
end

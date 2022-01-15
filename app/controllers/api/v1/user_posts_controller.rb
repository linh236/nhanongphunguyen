
module Api::V1
  class UserPostsController < ApiBaseController
    DEFAULT_PAGE = 1
    DEFAULT_PER_PAGE = 5

    def index 
      page = params[:page].present? ? params[:page] : DEFAULT_PAGE 
      per_page = params[:per_page].present? ? params[:per_page] : DEFAULT_PER_PAGE
      items = UserPost.all.size
      user_post = UserPost.order(created_at: :desc).paginate(page: page, per_page: per_page)
      data = { 
        'current_page': page,
        'total_items': items,
        'total_page': (items/per_page.to_f).ceil,
        'user_posts': ActiveModel::Serializer::CollectionSerializer.new(user_post, each_serializer: UserPostSerializer, scope: self)
       }
      render json: {message: 'Load more successfully',data: data}
    end
  end
end
module Api::V1
  class PostsController < ApiBaseController

    def create
      post = Post.new(post_params.merge(user_id: current_user.id))
      if post.save
        render json: {message: 'Create a new post successfully',data: PostSerializer.new(post, scope: current_user)}
      else
        render json: {error: post_params.errors}
      end
    end

    private

      def post_params
        params.permit(:title, :content, :youtube_link, :facebook_link, :twitter_link, :tiktok_link)
      end
  end
end
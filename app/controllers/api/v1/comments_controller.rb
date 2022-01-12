module Api::V1
  class CommentsController < ApiBaseController

    def index
    end
  
    def create
      comment = Comment.new(body: params[:body], user_id: params[:user_id], user_post_id: params[:user_post_id])
      if comment.save
        render json: {message: 'Comment created successfully', data: CommentSerializer.new(comment)}
      else
        render json: {message: 'Comment created failed', data: comment.errors}
      end
    end
  end
end
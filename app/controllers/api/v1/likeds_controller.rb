module Api::V1
  class LikedsController < ApiBaseController
    
    def create
      like =  Liked.where(liked_params)
      if like.exists?
        status = like.first.status? ? false : true;
        if Liked.update(liked_params.merge(status: status)) 
          render json: {message: 'Create update like post successfully', data: LikedSerializer.new(like.first)}
        else
          render json: {message: 'Create update like post faild', data: false}
        end
      else 
        like = Liked.new(liked_params.merge(status: true))
        if like.save
          render json: {message: 'Create new like post successfully', data: LikedSerializer.new(like)}
        else
          render json: {message: 'Create new like post failed', data: like.errors.full_messages}
        end
      end
    end

    private
      
      def liked_params
        params.permit(:user_post_id, :user_id, :status)
      end

  end
end
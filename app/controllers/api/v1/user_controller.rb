module Api::V1
  class UserController < ApiBaseController
    def update
      user = User.find(params[:id])
      if user.update(full_name: params[:full_name], email: params[:email], birth: params[:birth], gender: params[:gender], address: params[:address])
        render json: {message: 'Update successfully', data: UserSerializer.new(user)}
      else
        render json: {error: user.errors.full_messages}
      end
    end
  end
end
class UserPostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :user_id, :created_at, :updated_at, :user, :post
  
  def post
    PostSerializer.new(object.post)
  end

  def user
    UserSerializer.new(object.user)
  end

end
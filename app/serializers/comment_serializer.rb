class CommentSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :body, :user, :created_at, :updated_at

  def user 
    UserSerializer.new(object.user)
  end
  
end

class LikeCommentSerializer < ActiveModel::Serializer
  attributes :id
  has_one :comment
  has_one :user
end

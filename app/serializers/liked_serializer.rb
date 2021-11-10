class LikedSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user_post
  has_one :user
end

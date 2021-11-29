class LikedSerializer < ActiveModel::Serializer
  attributes :id, :set_status, :count_liked
  has_one :user_post
  # has_one :user

  def count_liked
    Liked.where(user_post_id: object.user_post_id, status: true).size
  end

  def set_status
    object.status? ? false : true
  end
end

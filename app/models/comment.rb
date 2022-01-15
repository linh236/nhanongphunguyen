class Comment < ApplicationRecord
  has_many :user_posts
  belongs_to :user
end

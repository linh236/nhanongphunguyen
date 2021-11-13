class UserPost < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :comments
  has_many :likeds
end

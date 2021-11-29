class Event < ApplicationRecord
  has_one_attached :picture
  validates :title, :description, :picture, :start, :finish, presence: true
end

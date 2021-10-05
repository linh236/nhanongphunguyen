class Post < ApplicationRecord
  has_many_attached :images
  # mount_uploaders :images, ImageUploader # mount the uploaders
end

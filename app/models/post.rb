class Post < ApplicationRecord
  has_many_attached :images
  # mount_uploaders :images, ImageUploader # mount the uploaders
  # validate :image_validates

  # def image_validates
  #   if images.attached?
  #     if images.blob.byte_size > 1000000
  #       images.purge
  #       errors[:base] << 'Too big'
  #     elsif !images.blob.content_type.starts_with?('image/')
  #       images.purge
  #       errors[:base] << 'Wrong format'
  #     end
  #   end
  # end
end

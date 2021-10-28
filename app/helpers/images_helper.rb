module ImagesHelper
  def resize_image(image, resize = '500x200' )
    return image
    # return image.variant(resize: resize)
  end
end

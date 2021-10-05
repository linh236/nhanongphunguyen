class ImagesController < ApplicationController
  before_action :set_post

  def create
    add_more_images(images_params[:images])
    flash[:error] = "Failed uploading images" unless @post.save
    redirect_to :posts
  end

  def destroy
    remove_image_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting image" unless @post.save
    redirect_to :posts
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def add_more_images(new_images)
    images = @post.images 
    images += new_images
    @post.images = images
  end

  def remove_image_at_index(index)
    remain_images = @post.images # copy the array
    deleted_image = remain_images.delete_at(index) # delete the target image
    deleted_image.try(:remove!) # delete image from S3
    @post.images = remain_images # re-assign back
  end

  def images_params
    params.require(:post).permit({images: []}) # allow nested params as array
  end
end

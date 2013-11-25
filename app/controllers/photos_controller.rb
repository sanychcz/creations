class PhotosController < ApplicationController
  
  before_filter :signed_in_user, only: [:edit, :update, :create, :new, :destroy ]
  
  def new
    @post = Post.find(params[:post_id])
    @photo = @post.photos.build
  end

  def create
    @post = Post.find(params[:post_id])
    @photo = @post.photos.build(photo_params)
    if @photo.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post.photos.find(params[:id]).destroy
    redirect_to @post
  end

  private 

  def photo_params
    params.require(:photo).permit!
  end
end

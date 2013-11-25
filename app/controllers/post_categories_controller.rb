class PostCategoriesController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update, :create, :new, :destroy ]
  layout :resolve_layout

  def new
    @post_category = PostCategory.new
  end

  def create
    @post_category = PostCategory.new(post_category_params)
    if @post_category.save
      redirect_to "/admin/categories"
    else
      render 'new'
    end
  end

  def destroy
    PostCategory.find(params[:id]).destroy
    redirect_to "/admin/categories"
  end

  def edit
    @post_category = PostCategory.find(params[:id])
  end

  def update
    @post_category = PostCategory.find(params[:id])
    if @post_category.update_attributes(post_category_params)
      redirect_to "/admin/categories"
    else
      render 'edit'
    end 
  end

  def show
    @post_category = PostCategory.find(params[:id])
    @works = Work.all
    @post_categories = PostCategory.all
  end

  private

    def resolve_layout
      case action_name
      when "new", "create", "edit"
        "admin"
      else
        "application"
      end
    end

    def post_category_params
      params.require(:post_category).permit(:name)
    end
end

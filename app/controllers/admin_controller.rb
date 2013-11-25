class AdminController < ApplicationController
  before_filter :signed_in_user

  layout "admin"

  def admin
  end

  def admin_categories
    @post_categories = PostCategory.all
  end

  def admin_works
    @works = Work.all
  end

  def admin_posts
    @posts = Post.all
    @works = Work.all
  end

  def admin_users
    @users = User.all
  end
end

class PostCategoriesController < ApplicationController
	before_filter :signed_in_user, only: [:edit, :update, :create, :new, :destroy ]

	def new
		@post_category = PostCategory.new
	end

	def create
		@post_category = PostCategory.new(params[:post_category])
		if @post_category.save
			redirect_to current_user
		else
			render 'new'
		end
	end

	def destroy
		PostCategory.find_by_name(params[:id]).destroy
		redirect_to current_user
	end

	def edit
		@post_category = PostCategory.find_by_name(params[:id])
	end

	def update
		@post_category = PostCategory.find_by_name(params[:id])
		if @post_category.update_attributes(params[:post_category])
			redirect_to current_user
		else
			render 'edit'
		end	
	end

	def show
		@post_category = PostCategory.find_by_name(params[:id])
		@works = Work.all
		@post_categories = PostCategory.all
	end
end

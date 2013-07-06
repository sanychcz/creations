class PostsController < ApplicationController
	before_filter :signed_in_user, only: [:edit, :update, :create, :new, :destroy ]

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		if @post.save
			redirect_to current_user
		else
			render 'new'
		end
	end

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(params[:post])
			redirect_to @post
		else
			render 'edit'
		end
	end	

	def destroy
		Post.find(params[:id]).destroy
		redirect_to current_user 
	end
end

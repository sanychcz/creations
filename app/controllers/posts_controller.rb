class PostsController < ApplicationController
	before_filter :signed_in_user, only: [:edit, :update, :create, :new, :destroy ]

	def new
		@work = Work.find(params[:work_id])
    @post = @work.posts.build
	end

	def create
		@work = Work.find(params[:work_id])
    @post = @work.posts.build(params[:post])
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
		@work = Work.find(params[:work_id])
		@post = @work.posts.find(params[:id])
	end

	def edit
		@work = Work.find(params[:work_id])
		@post = @work.posts.find(params[:id])
	end

	def update
		@work = Work.find(params[:work_id])
		@post = @work.posts.find(params[:id])
		if @post.update_attributes(params[:post])
			redirect_to work_post_path(@work, @post)
		else
			render 'edit'
		end
	end	

	def destroy
		Post.find(params[:id]).destroy
		redirect_to current_user 
	end
end

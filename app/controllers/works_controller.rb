class WorksController < ApplicationController
	before_filter :signed_in_user, only: [:edit, :update, :create, :new, :destroy ]

	def new
		@work = Work.new
	end

	def create
		@work = Work.new(params[:work])
		if @work.save
			redirect_to @work
		else
			render 'new'
		end
	end

	def edit
		@work = Work.find(params[:id])
	end

	def update
		@work = Work.find(params[:id])
		if @work.update_attributes(params[:work])
			redirect_to @work
		else
			render 'edit'
		end
	end

	def destroy
		@work = Work.find(params[:id]).destroy
		redirect_to current_user
	end

	def show
		@work = Work.find(params[:id])
	end

	def index
		@works = Work.all
		@post_categories = PostCategory.all
	end
end

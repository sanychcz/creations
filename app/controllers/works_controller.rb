class WorksController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update, :create, :new, :destroy, :show ]
  layout :resolve_layout

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to "/admin/works"
    else
      render 'new'
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update_attributes(work_params)
      redirect_to "/admin/works"
    else
      render 'edit'
    end
  end

  def destroy
    @work = Work.find(params[:id]).destroy
    redirect_to "/admin/works"
  end

  def show
    @work = Work.find(params[:id])
  end

  def index
    @works = Work.all
    @post_categories = PostCategory.all
  end

  private

    def resolve_layout
      case action_name
      when "new", "create", "edit", "show"
        "admin"
      else
        "application"
      end
    end

    def work_params
      params.require(:work).permit(:name, :post_ids => [])  
    end
end

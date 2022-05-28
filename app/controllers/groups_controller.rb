class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def show
  end

  def index
    @book = Book.new
    @user = current_user
    @groups = Group.all

  end

  def edit
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:notice] = "You have created group successfully."
      redirect_to groups_path
    else
      render 'new'
    end
  end

  def update
  end

  private

  def group_params
    params.require(:group). permit(:name, :introduction, :image_id, :owner_id)
  end

end

class GuidesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_user, only: [:update, :destroy]

  def index
    if current_user && current_user.admin?
      @guides = User.where(rol:'guide')
    end
  end

  def new
    if current_user && current_user.admin?
      @user = User.new
    else
      redirect_to root_path
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def update
    if current_user && current_user.admin?
      @user.update(user_params)
      redirect_to user_path(@user)
    else
     redirect_to users_path
    end
  end

  def edit
    if current_user && current_user.admin?
      @user = User.find(params[:id])
    else
     redirect_to users_path
    end
  end

  def destroy
    if current_user && current_user.admin?
      @user = User.find(params[:id])
      @user.destroy
      redirect_to user_path
    else
      redirect_to user_path
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :phone_number, :rol, :encrypted_password)
  end
end

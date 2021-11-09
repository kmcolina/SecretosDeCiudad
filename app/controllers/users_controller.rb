class UsersController < ApplicationController

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
      render 'users/index'
    else
      render :new
    end
  end

  # def destroy
  #   if current_user && current_user.admin?
  #     @user = User.find(params[:id])
  #     @user.destroy
  #   else
  #     redirect_to users_path
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :phone_number, :rol, :encrypted_password, :password, :password_confirmation)
  end
end

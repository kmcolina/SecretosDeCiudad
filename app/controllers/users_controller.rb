class UsersController < ApplicationController

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

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :phone_number, :rol, :encrypted_password)
  end
end

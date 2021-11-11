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

  def pago
    if current_user && current_user.admin?
    @bookings = Booking.all.order(check_in: :desc, status_pago: :desc)
    else
      redirect_to routes_path
    end
  end

  def update_pago
    @pago = Booking.find(params[:id])
    if @pago.status_pago != true
      @pago.update_attribute(:status_pago, true)
    elsif  @pago.status_pago == true
      @pago.update_attribute(:status_pago, false)
    end
    redirect_to pago_valid_path
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

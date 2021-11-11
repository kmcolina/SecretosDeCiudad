class BookingsController < ApplicationController


  def index
    @bookings = Booking.all.where(user: current_user).order(created_at: :desc)

  end

  def new
    @booking = Booking.new
    @route = Route.find(params[:route_id])
    @booking.route = @route
  end


  def create
    @route = Route.find(params[:route_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.route =  @route
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_pago_user)
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:check_in)
  end

  def booking_pago_user
    params.require(:booking).permit(:pago_user, :created_at)
  end


end

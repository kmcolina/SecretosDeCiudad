class BookingsController < ApplicationController


  def index
    @bookings = Booking.all

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
      redirect_to route_path(@route)
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:check_in)
  end


end

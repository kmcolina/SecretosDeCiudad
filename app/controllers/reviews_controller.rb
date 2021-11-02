class ReviewsController < ApplicationController
  def create
    @route = Route.find(params[:route_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking.route = @route
    if @review.save
      redirect_to route_path(@route)
    else
      render "bookings/bookings"
    end
    # @review = Review.new(review_params)
    # @review = @objeto_acuatico.reviews.build(review_params)
    # if @review.save
    #   redirect_to objeto_acuatico_path(@objeto_acuatico)
    # else
    #   render 'objeto_acuaticos/show'
    # end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end

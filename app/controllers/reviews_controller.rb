class ReviewsController < ApplicationController
  def create
    @route = Route.find(params[:route_id])
    @review = Review.new(review_params)
    @review.route = @route
    @review.user = current_user
    if @review.save
      redirect_to route_path(@route)
    else
      render "routes/show"
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

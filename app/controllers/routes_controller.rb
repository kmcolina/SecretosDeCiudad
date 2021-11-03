class RoutesController < ApplicationController
  # CRUD
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_route, only: [:show, :edit, :update, :destroy]

  def index
    if current_user && User.find(current_user.id).rol == "admin"
      # admin
      render 'admin'
    elsif current_user && User.find(current_user.id).rol == "guide"
      # guide
      render 'guide'
    else
      @routes = Route.all
    end
  end

  def show
    places = Place.all
    @lugares = []
    @review = Review.new(route_id: @route)
    @connection = Connection.where(route_id: @route)
    @connection.each do |conection|
      @lugares << places.find(conection.place_id)
    end
  end

  def create
    @route = Route.new(route_params)
    if @route.save
      redirect_to route_path(@route)
    else
      render :new
    end
  end

  def new
    @route = Route.new
  end

  def update
    @route.update(route_params)
    redirect_to route_path(@route)
  end

  def edit
  end

  def destroy
    @route.destroy
    redirect_to routes_path
  end

  private

  def set_route
    @route = Route.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:name, :duration, :places_interest, :description, :available_dates, :user_id, :rol, :price)
  end
end

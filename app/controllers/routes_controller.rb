class RoutesController < ApplicationController
  # CRUD
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_route, only: [:show, :edit, :update, :destroy]

  def index
    if current_user && current_user.admin?
      @routes = Route.all
      render 'admins/index'
    elsif current_user && current_user.guide?
      @guide_routes = Route.where(user_id: current_user.id)
      render 'guide'
    else
      @routes = Route.all
    end
  end

  def show
    if current_user && current_user.admin?
      places = Place.all
      # @connection = Connection.where(route_id: @route)
      @lugares = []
      # @connection.each do |conection|
      #   @lugares << places.find(conection.place_id)
      # end
      @fechas_all = []
      fechas = @route.available_dates
      array_fechas = fechas.split(',')
      array_fechas.each do |fecha|
        @fechas_all << Date.strptime(fecha, "%Y%m%d")
      end
      render 'admins/show'
    else
      places = Place.all
      @review = Review.new(route_id: @route)
      # @connection = Connection.where(route_id: @route)
      @lugares = []
      # @connection.each do |conection|
      #   @lugares << places.find(conection.place_id)
      # end
      fechas = @route.available_dates
      @array_fechas = fechas.split(',')
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
    params.require(:route).permit(:name, :duration, :places_interest, :description, :user_id, :rol, :price, :available_dates)
  end
end

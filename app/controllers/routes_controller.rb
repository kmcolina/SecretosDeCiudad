class RoutesController < ApplicationController
  # CRUD
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_route, only: [:show, :update, :destroy]

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
      @places_route = Place.where(route_id: @route)
      @lugares = []

      @places_route.each do |conection|
        @lugares << places.find(conection.id)
      end

      @fechas_all = []
      fechas = @route.available_dates
      array_fechas = fechas.split(',')
      array_fechas.each do |fecha|
        @fechas_all << Date.strptime(fecha, "%Y%m%d")
      end
      render 'admins/show'
    else
      places = Place.all
       @places_route = Place.where(route_id: @route)
      @review = Review.new(route_id: @route)
      @lugares = []

      @places_route.each do |conection|
        @lugares << places.find(conection.id)
      end
      @fechas_all = []
      fechas = @route.available_dates
      array_fechas = fechas.split(',')
      array_fechas.each do |fecha|
        @fechas_all << Date.strptime(fecha, "%Y%m%d")
      end
    end
  end

  def create
    @route = Route.new(route_params)
    @usuario = User.all
    if @route.save
      redirect_to route_path(@route)
    else
      render :new
    end
  end

  def new
    if current_user && current_user.admin?
      @route = Route.new
      @usuario = User.all
    else
      redirect_to routes_path
    end
  end

  def update
    if current_user && current_user.admin?
      @route.update(route_params)
      redirect_to route_path(@route)
    else
     redirect_to routes_path
    end
  end

  def edit
    if current_user && current_user.admin?
      @route = Route.find(params[:id])
    else
     redirect_to routes_path
    end
  end

  def destroy
    if current_user && current_user.admin?
      @route.destroy
      redirect_to routes_path
    else
     redirect_to routes_path
    end
  end

  private

  def set_route
    @route = Route.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:name, :duration, :places_interest, :description, :place_id, :user_id, :route_id, :price, :available_dates, :photo)
  end
end

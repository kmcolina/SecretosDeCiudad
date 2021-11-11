class PlacesController < ApplicationController
  before_action :set_place, only: %i[edit update show destroy]

  def index
    if current_user && current_user.admin?
      @places = Place.all
    else
      redirect_to routes_path
    end
  end

  def new
    @place = Place.new
    # @route = Route.find(params[:route_id])
    # @place.route = @route
  end


  def show
  end

  def create
    # @route = Route.find(params[:route_id])
    @place = Place.new(place_params)
    # @place.route =  @route
    if @place.save
      redirect_to places_path(@route)
    else
      render :new
    end
  end

  def update
     @place = Place.find(params[:id])
    @place.update(place_params)
    redirect_to place_path(@place)
  end

  def edit
  end

  def destroy
    if current_user && current_user.admin?
      @place.destroy
      redirect_to places_path
    else
     redirect_to places_path
    end
  end


  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :address, :description,:latitude, :longitude, :route_id)
  end

end

class PlacesController < ApplicationController

    def index
    @places = Place.all

  end

  def new
    @place = Place.new
    @route = Route.find(params[:route_id])
    @place.route = @route
  end


  def create
    @route = Route.find(params[:route_id])
    @place = Place.new(place_params)
    @place.route =  @route
    if @place.save
      redirect_to route_path(@route)
    else
      render :new
    end
  end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :address, :description, :route_id)
  end

end

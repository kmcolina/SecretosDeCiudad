class RoutesController < ApplicationController
  # CRUD
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_route, only: [:show, :update, :destroy]

  def fechas_index_guide
    # rutas que pertenecen al guia actual
    @guide_routes = Route.where(user_id: current_user.id)
  end



  def index
    if current_user && current_user.admin?
      @routes = Route.all
      render 'admins/index'
    elsif current_user && current_user.guide?
      # @guide_routes = Route.where(user_id: current_user.id)
      fechas_index_guide
      render 'guides/index'
    else
      # barra de busqueda
      @place = Place.all
      if params[:query].present?
        @lugar_ruta = Place.search_by_name_and_address(params[:query])
        # rutas que tienen asignado lugares

        @routes = []
        @lugar_ruta.each do |lugar|
          if lugar.route_id != []
            @routes << Route.find(lugar.route_id)
          end
        end
      else
        # rutas que tienen asignado lugares
        @routess = Route.all
        @routes = []
        @routess.each do |ruta|
          if  @places_route = Place.where(route_id: ruta) != []
            @routes << ruta
          end
        end
      end
    end
  end

  def data_show

    @review = Review.new(route_id: @route)
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



    # mapa
    @placess = Place.all
    @markers =  @places_route.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
        }
    end
  end

  def usr_book
    # tengo aca la ruta @guide_routes
    # busco en los booking los route id que hacen math

    @usr_fechas_book = []
    @guide_routes.each do |ruta|
        @usr_bookings  =  Booking.where(route_id: ruta.id).order(created_at: :desc)
        @usr_fechas_book << @usr_bookings.where(check_in: params[:fecha])
    end

    # filtro por fecha

    # busco a los usuarios que hacen match con esa ruta
    @usr = []
    @usr_fechas_book.each do |user|
      user.each do |usr|
         @usr << User.find(usr.user_id)
      end
    end

    @fecha = params[:fecha]


  end

  def show
    if current_user && current_user.admin?
      data_show
      render 'admins/show'
    elsif current_user && current_user.guide?
      @guide_routes = Route.where(user_id: current_user.id)
      data_show
      usr_book
      render 'guides/show'
    else
      data_show
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
    params.require(:route).permit(:name, :duration, :places_interest, :description, :place_id, :user_id, :route_id, :price, :available_dates, :photo, :avatar, :fecha)  end
end

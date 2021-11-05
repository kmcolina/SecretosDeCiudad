class ConnectionsController < ApplicationController
  before_action :set_connection, only: :destroy
  before_action :set_route, only: [:new, :create]

  def new
    @connection = Connection.new
  end

  def create
    @connection = Connection.new(connection_params)
    @connection.route = @route
    flash[:notice] = @connection.errors.full_messages.to_sentence unless @connection.save
    redirect_to route_path(@route)
  end

  def destroy
    @connection.destroy
    redirect_to route_path(@connection.route)
  end

  private

  def connection_params
    params.require(:connection).permit(:place_id)
  end

  def set_connection
    @connection = Connection.find(params[:id])
  end

  def set_route
    @route = Route.find(params[:route_id])
  end
end

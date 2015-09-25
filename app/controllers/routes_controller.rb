class RoutesController < ApplicationController
  before_action :set_route, only: [:show]

  def index
    @routes = Route.all
  end

  def show
    
  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)
    if @route.save
      redirect_to @route, notice: 'Route was successfully created.'
    else
      render :new
    end
  end

  private

  def route_params
    params.require(:route).permit(:name)
  end

  def set_route
    @route = Route.find(params[:id])
  end
end
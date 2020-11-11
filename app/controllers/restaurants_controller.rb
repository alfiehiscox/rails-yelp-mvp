class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(restaurant.id)
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end

class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
  end

  def new
  end

  def show
  end
end

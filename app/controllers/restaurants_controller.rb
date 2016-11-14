class RestaurantsController < ApplicationController
  def index
    @rests = Restaurant.all
  end

  def create
    @rest = Restaurant.new(restaurant_params)

    @rest.save
    redirect_to @rest
  end

  def new
  end

  def show
    @rest = Restaurant.find(params[:id])
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :genre, :rating, :accept_10bis, :address, :delivery_time)
  end
end

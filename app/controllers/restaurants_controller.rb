class RestaurantsController < ApplicationController
  def index
    @rests = Restaurant.all
  end

  def new
  end


  def edit
    @rest = Restaurant.find(params[:id])
  end

  def create
    @rest = Restaurant.new(restaurant_params)

    if @rest.save
      redirect_to @rest
    else
      render 'new'
    end
  end


  def update
    @rest = Restaurant.find(params[:id])

    if @rest.update(restaurant_params)
      redirect_to @rest
    else
      render 'edit'
    end
  end

  def show
    @rest = Restaurant.find(params[:id])
  end


  def destroy
    @rest = Restaurant.find(params[:id])
    @rest.destroy

    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:rest).permit(:name, :genre, :rating, :accept_10bis, :address, :delivery_time)
  end
end

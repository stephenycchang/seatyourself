class RestaurantsController < ApplicationController
  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])    
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_url
    else
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])
  end

  def destroy

  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :summary, :menu, :price_range, :available_timeslots)
  end
end

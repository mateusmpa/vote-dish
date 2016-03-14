class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order :name
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    
    redirect_to(action: 'index')
  end
end

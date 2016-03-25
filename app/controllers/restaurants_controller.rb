class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order :name

    respond_to do |format|
      format.html
      format.xml { render xml: @restaurants }
      format.json { render json: @restaurants }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])

    respond_to do |format|
      format.html
      format.xml { render xml: @restaurant }
      format.json { render json: @restaurant }
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to(action: 'index')
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to(action: 'show', id: @restaurant)
    else
      render action: 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find params[:id]
  end

  def update
    @restaurant = Restaurant.find params[:id]
    if @restaurant.update_attributes(restaurant_params)
      redirect_to action: 'show', id: @restaurant
    else
      render action: 'edit'
    end
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :specialty, :avatar)
  end
end

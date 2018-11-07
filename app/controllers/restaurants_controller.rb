class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    seek
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Congratz. Yet another insult to cuisine conjured out of the void.'
    else
      render :new
    end
  end

  def edit
    seek
  end

  def update
    seek
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    seek
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def seek
    @restaurant = Restaurant.find(params[:id])
  end
end

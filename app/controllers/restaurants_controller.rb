class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = find_restaurant
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(params_permit)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render "new"
    end
  end

  def edit
    @restaurant = find_restaurant
  end

  def update
    @restaurant = Restaurant.update(params_permit)
    redirect_to restaurants_path
  end

  def destroy
    @restaurant = find_restaurant
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def find_restaurant
    Restaurant.find(params[:id])
  end

  def params_permit
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

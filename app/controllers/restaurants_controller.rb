class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all #methode de classe
  end

  def show
    # @restaurant = Restaurant.find(params[:id]) #methode de classe
  end

  def new
    @restaurant = Restaurant.new  #methode de classe
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save # methode d'instance
    redirect_to restaurants_path
    # if @restaurant.save
    # redirect_to restaurants_path
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def edit
    # @restaurant = Restaurant.find(params[:id])
  end

  def update
    # @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end

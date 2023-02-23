class RestaurantsController < ApplicationController
  # A visitor can see the list of all restaurants.
  # GET "restaurants" ✅
  def index
    @restaurants = Restaurants.all
  end

  # A visitor can add a new review to a restaurant
  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews" ✅
  def show
    @restaurants = Restaurants.find(params[:id]) # params is what we receive from the user
    @review = Review.new # formulario p escrever review incluido na pagina que mostra um restaurante individual
  end

  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET "restaurants/38"
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # GET "restaurants/new"
  # POST "restaurants"
  def new
    @restaurant = Restaurant.new
  end

  private # what is this method doing? getting the info on the restaurant for the create mathod
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

class RestaurantsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @visit = Visit.new
    @visits = @restaurant.visits
  end

  def toggle_favorite
    @restaurant = Restaurant.find(params[:id])
    current_user.favorited?(@restaurant) ? current_user.unfavorite(@restaurant) : current_user.favorite(@restaurant)
  end

  def my_favorites
    @favorites = current_user.all_favorites
  end
end

class RestaurantsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @restaurants = Restaurant.all
    if params[:query].present?
      @restaurants = Restaurant.search_by_wait_time_and_address(params[:query])
    else
      @restaurants = Restaurant.all
    end
    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
        image_url: helpers.asset_url("beer.png")
      }
    end
    # Keep line below: will have to come back to it with the map
    # @restaurants.order(wait_time: :asc)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @visit = Visit.new
    @visits = @restaurant.visits.where.not(arrived: false).order(created_at: :desc)
  end

  def toggle_favorite
    @restaurant = Restaurant.find(params[:id])
    current_user.favorited?(@restaurant) ? current_user.unfavorite(@restaurant) : current_user.favorite(@restaurant)
  end

  def my_favorites
    @favorites = current_user.all_favorited
  end
end

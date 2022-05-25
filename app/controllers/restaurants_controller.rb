class RestaurantsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @restaurants = Restaurant.all
    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window: render_to_string(partial: "info_window", locals: { restaurant: restaurant }),
        image_url: helpers.asset_url("beer.png")
      }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @visit = Visit.new
    @visits = @restaurant.visits.where.not(arrived: false).order(created_at: :desc)
  end
end

class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # Four scenarios:
    # 1- No search values present
    # 2- Only location value
    # 3- Only waittime value
    # "wait_time < ?", "#{params[:waittime]}"
    # 4- Both Location and Waittime
    if params[:location].present?
      @restaurants = Restaurant.where("address ILIKE ?", "%#{params[:location]}%")
    elsif params[:wait_time].present?
      @restaurants = Restaurant.where("wait_time < 5", "#{params[:wait_time]}")
      @restaurants = Restaurant.where("wait_time < 10", "#{params[:wait_time]}")
      @restaurants = Restaurant.where("wait_time < 15", "#{params[:wait_time]}")
      @restaurants = Restaurant.where("wait_time < 30", "#{params[:wait_time]}")
      @restaurants = Restaurant.where("wait_time < 60", "#{params[:wait_time]}")
    elsif params[:wait_time].present? && params[:location].present?
      @restaurants = Restaurant.where("wait_time < ? && address ILIKE ?", "#{params[:wait_time]}, %#{params[:location]}%")
    else
      @restaurants = Restaurant.all
    end

    @restaurants = @restaurants.order(wait_time: :asc)
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

  def toggle_favorite
    @restaurant = Restaurant.find(params[:id])
    current_user.favorited?(@restaurant) ? current_user.unfavorite(@restaurant) : current_user.favorite(@restaurant)
  end

  def my_favorites
    @favorites = current_user.all_favorited
  end
end

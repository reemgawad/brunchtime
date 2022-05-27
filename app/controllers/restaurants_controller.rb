class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    # Four scenarios:
    # 1- No search values present
    # 2- Only location value
    # 3- Only waittime value
    # "wait_time < ?", "#{params[:waittime]}"
    # 4- Both Location and Waittime
    @restaurants = Restaurant.all.order(wait_time: :asc)
    unless params[:location].blank?
      @restaurants = @restaurants.where("address ILIKE ?", "%#{params[:location]}%")
    end
    unless params[:wait_time].blank?
      @restaurants = @restaurants.where("wait_time <= ?", params[:wait_time])
    end

    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window: render_to_string(partial: "info_window.html", locals: { restaurant: restaurant }),
        image_url: helpers.asset_url("beer.png")
      }
    end

    # implementing ajax in search
    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { restaurants: @restaurants } }
      # format.json { render json: { restaurants: "lalala" } }
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

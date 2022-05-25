class RestaurantsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @visit = Visit.new
    @visits = @restaurant.visits.where.not(arrived: true).order(created_at: :desc)
  end
end

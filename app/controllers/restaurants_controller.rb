class RestaurantsController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @restaurants = Restaurant.all
  end

  # getting ahead, uncomment below when/if needed

  # def show
  #   @restaurant = Restaurant.find(params[:id])
  # end
end

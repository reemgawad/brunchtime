class VisitsController < ApplicationController
  def create
    @visit = Visit.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @visit.restaurant = @restaurant
    @visit.user = current_user
    @visit.date = Date.today

    if @visit.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end

  private

  def visit_params
    params.require(:visit).permit(:feedback, :rating)
  end
end

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

  def update
    @visit = Visit.find(params[:id])
    @visit.arrived = true
    @visit.update(visit_params)
    @restaurant = @visit.restaurant

    if @visit.update(visit_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def edit
    @visit = Visit.find(params[:id])
  end

  private

  def visit_params
    params.require(:visit).permit(:feedback, :rating)
  end
end

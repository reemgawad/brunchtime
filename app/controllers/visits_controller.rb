class VisitsController < ApplicationController
  def create
    @visit = Visit.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @visit.restaurant = @restaurant
    @visit.user = current_user
    @visit.date = Date.today

    if @visit.save
      redirect_to visit_path(@visit)
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

  def show
    @visit = Visit.find(params[:id])
    @restaurant = @visit.restaurant
    @marker = {
      lat: @restaurant.latitude,
      lng: @restaurant.longitude
    }
  end

  def arrived!
    @visit = Visit.find(params[:visit_id])
    @visit.arrived = true

    redirect_to edit_visit_path(@visit)
  end

  private

  def visit_params
    params.require(:visit).permit(:feedback, :rating)
  end
end

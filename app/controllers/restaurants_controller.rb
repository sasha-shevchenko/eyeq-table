class RestaurantsController < ApplicationController
  skip_before_action :authenticate_restaurant!, only: [:home, :show]
  def show
    @restaurant = Restaurant.find(params[:id])
    @categories = @restaurant.categories
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(strong_params)
      redirect_to restaurant_dashboard_path(@current_restaurant)
    end
  end

  private

  def strong_params
    params.require(:restaurant).permit(:name, :cuisine, :instagram_url, :facebook_url, :tripadvisor_url, :logo)
  end
end

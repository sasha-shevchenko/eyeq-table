class RestaurantsController < ApplicationController
  skip_before_action :authenticate_restaurant!, only: :home
  def show
    @categories = current_restaurant.categories
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(strong_params)
      redirect_to dashboard_path
    end
  end

  private

  def strong_params
    params.require(:restaurant).permit(:name, :instagram_url, :facebook_url, :tripadvisor_url)
  end
end
 # :photo in strong

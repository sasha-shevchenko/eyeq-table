class RestaurantsController < ApplicationController
  skip_before_action :authenticate_restaurant!, only: :home
  def show
    @restaurants = current_restaurant
    @cetegories = current_restaurant.categories
  end
end

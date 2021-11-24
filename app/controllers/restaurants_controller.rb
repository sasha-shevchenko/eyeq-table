class RestaurantsController < ApplicationController
  skip_before_action :authenticate_restaurant!, only: :home
  def show
    @cetegories = current_restaurant.categories
  end
end

class DashboardsController < ApplicationController
  def show
    @categories = current_restaurant.categories

  end
end

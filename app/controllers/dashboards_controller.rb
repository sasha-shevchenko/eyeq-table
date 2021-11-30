class DashboardsController < ApplicationController
  def show
    @categories = current_restaurant.categories
  end

  def overview
  end
end

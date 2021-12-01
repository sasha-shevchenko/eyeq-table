class DashboardsController < ApplicationController
  def show
    @categories = current_restaurant.categories
  end

  def overview
    # all open session_items.where(sent_to_kitchen: true)
    @sessions = current_restaurant.sessions.where(done: false)
  end

  private

  def strong_params
    params.require(:restaurant).permit(:cusine)
  end
end

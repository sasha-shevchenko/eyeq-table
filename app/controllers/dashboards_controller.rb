class DashboardsController < ApplicationController
  def show
    @categories = current_restaurant.categories
  end

  def overview
    @ordered_items = @current_session.session_items.where(sent_to_kitchen: true).group_by{ |session_item| session_item.item_id }
    # @timestamp = @current_session.session_items.created_at
  end
end

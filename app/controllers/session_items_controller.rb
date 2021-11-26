class SessionItemsController < ApplicationController
  def index
    @session_items = @current_session.session_items
    @restaurant = @current_session.restaurant
  end

  def create
    @item = Item.find(params[:item_id])
    @session_item = SessionItem.create(session: @current_session, item: @item, quantity: 1)
    if @session_item.save
      redirect_to category_items_path(@item.category_id)
    end
  end

  def destroy
    @session_item = SessionItem.find(params[:id])
    @category = @session_item.item.category
    if @session_item.destroy
      redirect_to category_items_path(@category)
    end
  end
end

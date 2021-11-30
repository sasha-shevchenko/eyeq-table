class SessionItemsController < ApplicationController
  skip_before_action :authenticate_restaurant!

  def index
    @session_items = @current_session.session_items
    @restaurant = @current_session.restaurant

    @ordered_items = @current_session.session_items.where(sent_to_kitchen: true).group_by{ |session_item| session_item.item_id }
    @unordered_items = @current_session.session_items.where(sent_to_kitchen: false).group_by{ |session_item| session_item.item_id }
  end

  def create
    @item = Item.find(params[:item_id])
    @session_item = SessionItem.create(session: @current_session, item: @item, quantity: 1)
    if @session_item.save
      respond_to do |format|
        format.html {
          redirect_back(fallback_location: session_items_path)
         }
         format.json {
          render json: { status: 200 }
         }
      end
    end
  end

  def update
    # find the session_items within my order
    @current_session.session_items
    # update the sent_to_kitchen boolean to true for all the items
    @current_session.session_items.each do |session_item|
      session_item.update(sent_to_kitchen: true)
    end

    # redirect_to status_session_items_path
    redirect_to restaurant_path(@current_session.restaurant)
  end

  def destroy
    @session_item = SessionItem.find(params[:id])
    @category = @session_item.item.category
    if @session_item.destroy
      redirect_back(fallback_location: session_items_path)
    end
  end

  def status
  end
end

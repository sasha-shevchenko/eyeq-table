class ItemsController < ApplicationController
  skip_before_action :authenticate_restaurant!, only: :index
  def index
    @category = Category.find(params[:category_id])
    @items = @category.items

    @session_items_per_item = @current_session.session_items.where(sent_to_kitchen: false).group(:item).count
  end

  def new
    @category = Category.find(params[:category_id])
    @item = Item.new
  end

  def create
    @item = Item.new(strong_params)
    @item.category_id = params[:category_id]
    if @item.save
      redirect_to restaurant_dashboard_path(@current_session.restaurant)
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.category_id = params[:category_id]
    if @item.update(strong_params)
      redirect_to restaurant_dashboard_path(@current_session.restaurant)
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to restaurant_dashboard_path(@current_session.restaurant)
    end
  end

  private

  def strong_params
    params.require(:item).permit(:name, :description, :price, :photo)
  end
end

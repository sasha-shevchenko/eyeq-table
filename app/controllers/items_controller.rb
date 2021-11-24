class ItemsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @items = Item.all
  end

  def new
    @category = Category.find(params[:category_id])
    @item = Item.new
  end

  def create
    @item = Item.new(strong_params)
    @item.category_id = params[:category_id]
    if @item.save
      redirect_to dashboard_path
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
      redirect_to dashboard_path
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to dashboard_path(@item)
    end
  end

  private

  def strong_params
    params.require(:item).permit(:name, :description, :price)
  end
end

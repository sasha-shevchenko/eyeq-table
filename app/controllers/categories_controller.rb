class CategoriesController < ApplicationController
  skip_before_action :authenticate_restaurant!, only: :index
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(strong_params)
    @category.restaurant = current_restaurant
    if @category.save
      redirect_to restaurant_dashboard_path(@current_session.restaurant)
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to restaurant_dashboard_path(@current_session.restaurant)
    end
  end

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @categories = @restaurant.categories
  end

  private

  def strong_params
    params.require(:category).permit(:name, :photo)
  end
end

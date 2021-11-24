class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(strong_params)
    @category.restaurant = current_restaurant
    if @category.save
      redirect_to dashboard_path
    end
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to dashboard_path
    end
  end

  def index
    @categories = Category.all
  end

  private

  def strong_params
    params.require(:category).permit(:name)
  end
end

class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(strong_params)
    if @category.save
      redirect_to
    end
  end

  private

  def strong_params
    params.require(:category).permit(:name, :restaurant_id)
  end
end

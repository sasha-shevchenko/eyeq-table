class PagesController < ApplicationController
  skip_before_action :authenticate_restaurant!, only: :home
  def home
  end
end

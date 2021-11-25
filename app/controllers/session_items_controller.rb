class SessionItemsController < ApplicationController
  def index
    @session_items = SessionItem.all
  end
end

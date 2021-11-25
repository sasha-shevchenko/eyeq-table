class SessionItemsController < ApplicationController
  def index
    @session_items = @current_session.session_items
  end
end

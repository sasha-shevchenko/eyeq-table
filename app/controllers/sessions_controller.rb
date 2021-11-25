class SessionsController < ApplicationController
  skip_before_action :authenticate_restaurant!

  def new
    @table = Table.find(params[:table_id])
    if @current_session.nil? || @current_session.table_id != @table.id
      @session = Session.create(table: @table)
      cookies.signed[:session_id] = @session.id
    end
    redirect_to restaurant_path(@table.restaurant_id)
  end
end

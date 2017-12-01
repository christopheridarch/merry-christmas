class XmasItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if user_signed_in?
      @xmas_items = XmasItem.where.not(user_id: current_user.id)
    else
      @xmas_items = XmasItem.all
    end
  end

  def show
    @xmas_item  = XmasItem.find(params[:id])
    @booking    = Booking.new
  end
end

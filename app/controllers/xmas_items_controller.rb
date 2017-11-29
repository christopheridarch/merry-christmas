class XmasItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @xmas_items = XmasItem.all
  end

  def show
    @xmas_item  = XmasItem.find(params[:id])
    @booking    = Booking.new
  end
end

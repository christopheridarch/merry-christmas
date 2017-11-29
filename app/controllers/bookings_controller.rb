class BookingsController < ApplicationController
  def new
    @xmas_item = XmasItem.find(params[:xmas_item_id])
    @booking   = Booking.new
  end

  def create
    xmas_item             = XmasItem.find(params[:xmas_item_id])
    @booking              = Booking.new(booking_params)
    @booking.xmas_item    = xmas_item
    @booking.user         = current_user
    @booking.status       = "pending"
    @booking.total_price  = xmas_item.price_per_day * (@booking.end_date - @booking.start_date + 1)

    if @booking.save
      redirect_to xmas_items_path
    else
      render :new
    end

  end

  def show
  end

  def index
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  # def find_cocktail
  #   @cocktail = Cocktail.find(params[:id])
  # end
end

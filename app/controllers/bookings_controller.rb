class BookingsController < ApplicationController
  # def new
  #   @xmasItem = XmasItem.find(params[:xmas_item_id])
  #   @booking   = Booking.new
  # end

  def create

    start_date            = Date.parse(booking_params[:start_date])
    end_date              = Date.parse(booking_params[:end_date])

    xmas_item             = XmasItem.find(params[:xmas_item_id])
    @booking              = Booking.new(start_date: start_date, end_date: end_date)
    @booking.xmas_item    = xmas_item
    @booking.user         = current_user
    @booking.status       = "pending"
    @booking.total_price  = xmas_item.price_per_day * (@booking.end_date - @booking.start_date + 1)

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @bookings = current_user.bookings
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      if current_user.bookings.size > 0
        redirect_to bookings_path
      else
        redirect_to xmas_items_path
      end
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  # def find_cocktail
  #   @cocktail = Cocktail.find(params[:id])
  # end
end

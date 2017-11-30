class Owner::ReservationsController < ApplicationController
  def accept
    @booking  = Booking.find(params[:id])
    @booking.status = "Accepted"
    @booking.save
    redirect_to owner_xmas_item_path(@booking.xmas_item)
  end

  def decline
    @booking  = Booking.find(params[:id])
    @booking.status = "Declined"
    @booking.save
    redirect_to owner_xmas_item_path(@booking.xmas_item)
  end

end

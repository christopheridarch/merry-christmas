class Owner::ReservationsController < ApplicationController
  def accept
    @booking  = Booking.find(params[:id])
    @booking.status = "accept"
    @booking.save
    redirect_to owner_xmas_item_path(@booking.xmas_item)
  end

  def decline
    @booking  = Booking.find(params[:id])
    @booking.status = "decline"
    @booking.save
    redirect_to owner_xmas_item_path(@booking.xmas_item)
  end

end

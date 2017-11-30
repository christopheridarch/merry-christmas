class Owner::XmasItemsController < ApplicationController
  def index
  end

  def show
    @xmas_item  = XmasItem.find(params[:id])
  end

  # def accept
  #   @xmas_item.status = "Accepted"
  #   redirect_to @xmas_item
  # end

  # def decline
  #   @xmas_item.status = "Declined"
  #   redirect_to @xmas_item
  # end

  private

  # def xmas_item_params params.require(:xmas_item).permit(:status)
  # end
end



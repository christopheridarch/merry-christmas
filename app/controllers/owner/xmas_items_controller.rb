class Owner::XmasItemsController < ApplicationController
  def index
    @xmas_items = current_user.xmas_items
  end

  def show
    @xmas_item

  end

  def new
    @xmas_item = XmasItem.new
  end

  def create
    @xmas_item = XmasItem.new(xmas_item_params)
    @xmas_item.user = current_user
    if @xmas_item.save
      redirect_to xmas_items_path
    else
      render :new
    end
  end

private

  def xmas_item_params
    params.require(:xmas_item).permit(:name, :description, :address, :photo, :price_per_day)
  end

end





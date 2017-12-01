class Owner::XmasItemsController < ApplicationController
  before_action :set_xmas_item, only: [:edit, :update]


  def index
    @xmas_items = current_user.xmas_items
  end

  def show
    @xmas_item  = XmasItem.find(params[:id])
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

  def edit
    @xmas_item = XmasItem.find(params[:id])
  end

  def update
    if @xmas_item.save(xmas_item_params)
      redirect_to @xmas_item, notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end


  private

  def xmas_item_params
    params.require(:xmas_item).permit(:name, :description, :address, :photo, :price_per_day)
  end

   def set_xmas_item
    @xmas_item = XmasItem.find(params[:id])
  end
end

class XmasItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @xmasItems = XmasItem.all
  end

  def show
    @xmasItem = XmasItem.find(params[:id])
  end
end

class XmasItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @xmas_items = XmasItem.all
  end
end

class XmasItemsController < ApplicationController
  def index
    @xmas_items = XmasItem.all
  end
end

class Owner::XmasItemsController < ApplicationController
  def index
    @xmas_items = current_user.xmas_items
  end
end

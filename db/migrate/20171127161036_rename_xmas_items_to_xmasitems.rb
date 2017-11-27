class RenameXmasItemsToXmasitems < ActiveRecord::Migration[5.0]
  def change
    rename_table :xmas_items, :xmasitems
  end
end

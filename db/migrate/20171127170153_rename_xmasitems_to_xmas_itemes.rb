class RenameXmasitemsToXmasItemes < ActiveRecord::Migration[5.0]
  def change
        rename_table  :xmasitems, :xmas_items
  end
end

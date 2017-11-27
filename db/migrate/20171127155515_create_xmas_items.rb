class CreateXmasItems < ActiveRecord::Migration[5.0]
  def change
    create_table :xmas_items do |t|
      t.string :name
      t.string :description
      t.integer :price_per_day
      t.boolean :available
      t.string :photo
      t.string :address
      t.references :user, foreign_key: true
    end
  end
end

class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.string :status
      t.integer :total_price
      t.references :user, foreign_key: true
      t.references :xmas_item, foreign_key: true
    end
  end
end

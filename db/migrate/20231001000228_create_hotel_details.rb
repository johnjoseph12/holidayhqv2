class CreateHotelDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :hotel_details do |t|
      t.references :trip, null: false, foreign_key: true
      t.date :checkout_date
      t.string :place
      t.string :qr_code_url

      t.timestamps
    end
  end
end

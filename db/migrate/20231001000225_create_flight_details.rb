class CreateFlightDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :flight_details do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :airport
      t.datetime :departure_time
      t.datetime :arrival_time
      t.string :airline

      t.timestamps
    end
  end
end

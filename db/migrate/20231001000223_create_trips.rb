class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :destination
      t.date :start_date
      t.date :end_date
      t.integer :total_people
      t.decimal :budget

      t.timestamps
    end
  end
end

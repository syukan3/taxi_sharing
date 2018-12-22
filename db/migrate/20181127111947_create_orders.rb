class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :location
      t.datetime :date_time
      t.integer :passenger_id
      t.integer :driver_id

      t.timestamps
    end
  end
end

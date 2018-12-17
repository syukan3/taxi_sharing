class AddOrdersTo < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :lat, :decimal, precision: 11, scale: 8, null: true
    add_column :orders, :lng, :decimal, precision: 11, scale: 8, null: true
  end
end

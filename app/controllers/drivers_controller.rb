class DriversController < ApplicationController
  before_action :authenticate_driver!, only: [:show]

  def show
    @driver = Driver.find_by(id: current_driver.id)
    @orders = Order.where(driver_id: nil).order(date_time: :asc)
    @past_orders = Order.where(driver_id: current_driver.id).order(date_time: :asc)
  end
end

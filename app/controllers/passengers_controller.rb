class PassengersController < ApplicationController
  before_action :authenticate_passenger!, only: [:show]

  def show
    @passenger = Passenger.find_by(id: current_passenger.id)
    all_order =Order.where(passenger_id: current_passenger.id).order(date_time: :asc)
    @orders = all_order.where(driver_id: nil)
    @past_orders = all_order.where.not(driver_id: nil)
  end
end

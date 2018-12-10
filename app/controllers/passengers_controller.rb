class PassengersController < ApplicationController
  before_action :authenticate_passenger!, only: [:show]

  def show
    @passenger = Passenger.find_by(id: current_passenger.id)
    @orders = Order.where(passenger_id: current_passenger.id, driver_id: nil).order(date_time: :asc)
    @past_orders = Order.where(passenger_id: current_passenger.id).order(date_time: :asc)
  end
end

class ApplicationController < ActionController::Base
  # before_action :login_check, {only: [:login] deviseのログイン前に使いたい。

  def login_check
    if passenger_signed_in?
      flash[:notice] = "Passenger ログイン中です。"
      redirect_to("/")
    elsif driver_signed_in?
      flash[:notice] = "Driver ログイン中です。"
      redirect_to("/")
    end
  end

end

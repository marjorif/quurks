class ReservationsController < ApplicationController

  private

  def reservation_params
    params.require(:reservation).permit()
  end
end

class BookingsController < ApplicationController
  def index

  end

  def create

  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

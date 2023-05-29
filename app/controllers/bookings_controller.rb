class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(bookings_params)
    @bookng.island = @island
    if booking.save
      redirect_to island_path(@island)
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

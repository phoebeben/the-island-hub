class BookingsController < ApplicationController
  before_action :set_booking, only: [:create]

  def create
    @booking = Booking.new(bookings_params)

    @booking.island = @island
    if booking.save
      redirect_to island_path(@island)
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

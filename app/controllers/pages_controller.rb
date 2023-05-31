class PagesController < ApplicationController
  def home
  end

  def show
    @booking = Booking.find(params[:id])
    @island = Island.find(@booking.island_id)
    @user = current_user
  end
end

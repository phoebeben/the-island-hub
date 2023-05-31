class PagesController < ApplicationController
  def home
  end

<<<<<<< HEAD
  def index
    @bookings = current_user.bookings
=======
  def show
    @booking = Booking.find(params[:id])
    @island = Island.find(@booking.island_id)
    @user = current_user
>>>>>>> 080c37a79e012334b144e6826c06fb3ea4185aad
  end
end

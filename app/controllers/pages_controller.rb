class PagesController < ApplicationController
  def home
  end

  def bookings
    @bookings = current_user.bookings
  end
end

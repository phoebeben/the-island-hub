class PagesController < ApplicationController
  def landing
    @islands = Island.last(4)
  end

  def bookings
    @bookings = current_user.bookings
  end
end

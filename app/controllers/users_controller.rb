class UsersController < ApplicationController
  def show
    @bookings = current_user.bookings.last(4)
    @islands = current_user.islands.last(4)
  end
end

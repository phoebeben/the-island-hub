class UsersController < ApplicationController
  def show
    @user = current_user
    .bookings.map do |booking|
    booking.island
    @islands = @user.islands
    end
  end
end

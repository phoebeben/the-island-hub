class PagesController < ApplicationController
  def home
  end

  def index
    @bookings = current_user.bookings
  end
end

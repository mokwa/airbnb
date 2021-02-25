class UsersInfoController < ApplicationController

  def index
    @flats = Flat.all
    @bookings = Booking.all
  end

end

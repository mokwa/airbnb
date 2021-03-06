class BookingsController < ApplicationController

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @flat = Flat.find(params[:flat_id])
    @booking.flat = @flat

    @booking.user = current_user

    if @booking.save
      redirect_to my_profile_path, notice: "Booking added to your profile!"
    else
      render :new
    end
  end

private

def booking_params
  params.require(:booking).permit(:start_date, :end_date)
end

end

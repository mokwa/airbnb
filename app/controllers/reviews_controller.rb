class ReviewsController < ApplicationController

    def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    end

    def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    # @flat = Flat.find(params[:flat_id])
    # @review.user = current_user

    if @review.save
      redirect_to flats_path(@flat)
    else
      render :new
    end
        
    end

    private

    def review_params
        params.require(:review).permit(:rating, :description)
    end
end

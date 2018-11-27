class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.find(params[:id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking)
    else
      render "bookings/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :rating, :description)
  end
end

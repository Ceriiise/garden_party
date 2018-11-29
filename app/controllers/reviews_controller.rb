class ReviewsController < ApplicationController
  after_action :verify_authorized

  def new
    @review = Review.new
    @booking = Booking.find(params[:id])
    authorize(@booking)
  end

  def create
    @booking = Booking.find(params[:id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user
    authorize @booking
    if @review.save
      redirect_to bookings_path
    else
      render "bookings/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :rating, :description)
  end
end

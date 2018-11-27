class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def new
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new
  end

  def create
    raise
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new(booking_params)
    @booking.garden = @garden
    @booking.user = current_user

    if @booking.save
      redirect_to gardens_path
      # @booking.booked = true quand flatpicker sera mis en place
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @garden_id = @booking.garden_id
    @booking.destroy
    redirect_to gardens_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :nbguests)
  end
end

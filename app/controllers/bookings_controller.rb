class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @gardens = policy_scope(Garden)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
    @review = Review.new
  end

  def new
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new(booking_params)
    authorize @booking
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
    authorize @booking
    @garden_id = @booking.garden_id
    @booking.destroy
    redirect_to gardens_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :nbguests)
  end
end

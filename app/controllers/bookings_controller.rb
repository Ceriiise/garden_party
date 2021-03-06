class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @gardens = policy_scope(Garden)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.nb_nights = (@booking.end_date - @booking.start_date).to_i
    @booking.total_price = (@booking.nb_nights * @booking.garden.price)
    @review = Review.new
  end

  def new
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.garden = @garden
    @booking.user = current_user
    @booking.nb_nights = (@booking.end_date - @booking.start_date).to_i
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    @garden = @booking.garden
    redirect_to garden_path(@garden)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :nbguests)
  end
end

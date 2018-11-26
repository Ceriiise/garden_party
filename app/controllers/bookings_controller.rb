class BookingsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new(booking_params)
    @booking.garden = @garden
    @booking.user = current_user

    if @booking.save
      redirect_to gardens_path
      #@booking.booked = true quand flatpicker sera mis en place
    else
      render :new
    end
  end

  def delete
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :nbguests)
  end
end

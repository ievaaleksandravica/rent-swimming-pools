class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pool = Pool.find(params[:pool_id])
    if @booking.save
      redirect_to pool_path(@booking.pool)
    else
      # render pool_path
    end

  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

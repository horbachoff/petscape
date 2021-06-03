class BookingUpdatesController < ApplicationController
  def new
    @booking_update = BookingUpdate.new
  end

  def index
    @booking = Booking.find(params[:booking_id])
    @booking_updates = @booking.booking_updates
    @booking_update = BookingUpdate.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @booking_update = BookingUpdate.new(booking_update_params)
    @booking_update.booking = @booking
    if @booking_update.save
      redirect_to booking_booking_updates_path(@booking)
    end
  end

  private

  def booking_update_params
    params.required(:booking_update).permit(:content, :media)
  end
end

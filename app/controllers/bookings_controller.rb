class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @pet_nanny = PetNanny.find(params[:booking][:pet_nanny_id])
    if @booking.save
      redirect_to @booking.pet_nanny
    else
      render "pet_nannies/show"
    end
  end

  private

  def booking_params
    params.required(:booking).permit(:pet_nanny_id, :pet_id, :start_time, :end_time)
  end
end

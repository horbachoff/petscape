class PetNannyReviewsController < ApplicationController
def new
    @booking = Booking.find(params[:booking_id])
    @review = PetNannyReview.new
  end

  def create
    @review = PetNannyReview.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.save
    redirect_to bookings_path
  end

  private

  def review_params
    params.require(:pet_nanny_review).permit(:content, :rating)
  end

end

class PetReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = PetReview.new
  end

  def create
    @review = PetReview.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    @review.save
    redirect_to pet_nanny_dashboard_path
  end

  private

  def review_params
    params.require(:pet_review).permit(:content, :rating)
  end

end

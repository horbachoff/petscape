class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @pet_nanny = PetNanny.find(params[:booking][:pet_nanny_id])
    start_date_str = @booking.star_time.strftime('%a %d %b %Y')
    end_date_str = @booking.end_time.strftime('%a %d %b %Y')
    @booking.amount_cents = @pet_nanny.rate_cents
    @booking.user = current_user
    if @booking.save!

      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: "Pet Nanny: #{@pet_nanny.user.name}, from #{start_date_str} to #{end_date_str}",
          images: [@pet_nanny.user.profile_picture],
          amount: @booking.amount_cents,
          currency: 'usd',
          quantity: (@booking.end_time - @booking.star_time).to_i
        }],
        success_url: bookings_url,
        cancel_url: pet_nanny_url(@pet_nanny)
      )
    
      @booking.update(checkout_session_id: session.id)
      redirect_to new_booking_payment_path(@booking)

      # redirect_to @booking.pet_nanny
    else
      @bookings = Booking.eager_load(:pet_nanny).where("pet_nannies.id = '#{@pet_nanny.id}'")
      render "pet_nannies/show"
    end
  end

  private

  def booking_params
    params.required(:booking).permit(:pet_nanny_id, :pet_id, :star_time, :end_time)
  end

end

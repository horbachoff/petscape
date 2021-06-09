class OrdersController < ApplicationController
  def create
    pet_nanny = PetNanny.find(params[:pet_nanny_id])
    order = Order.create!(pet_nanny: pet_nanny, amount: pet_nanny.rate, state: 'pending', user: current_user)
  
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "#{pet_nanny.user.name}",
        # images: [pet_nanny.user.photo],
        amount: pet_nanny.rate_cents,
        currency: 'usd',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )
  
    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end
end

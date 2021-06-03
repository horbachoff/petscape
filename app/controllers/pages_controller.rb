class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]

  def home
  end

  def bookings
    @bookings = current_user.bookings
  end

  def about
  end


  def pet_owners
  end

  def pet_owner_dashboard
    @user_pets = current_user.pets
  end

  def pet_nanny_dashboard
    if current_user.pet_nanny?
      pet_nanny = current_user.pet_nannies.first
      @bookings = pet_nanny.bookings
    end
  end
end

# when a user clicks on pet owners go to a new view
# pet_owners action to options list the nannies or upload a new pet.
# link_to nannies list or add a new pet
# if the user wants to be a pet nanny display a form to create a pet nanny profile

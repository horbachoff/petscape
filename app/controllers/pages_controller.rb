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

  def dashboard
    @user_pets = current_user.pets
  end
end

# when a user clicks on pet owners go to a new view
# pet_owners action to options list the nannies or upload a new pet.
# link_to nannies list or add a new pet
# if the user wants to be a pet nanny display a form to create a pet nanny profile

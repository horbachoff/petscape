class PetNanniesController < ApplicationController
  def index
    if params[:query].present?
      @pet_nannies = PetNanny.eager_load(:user).where("users.address ILIKE ?", "%#{params[:query]}%")
    else
      @pet_nannies = PetNanny.all
    end
  end

  def new
    @pet_nanny = PetNanny.new
  end

  def create
    @pet_nanny = PetNanny.new(pet_nanny_params)
    if @pet_nanny.save
      redirect_to pet_nanny_path(@pet_nanny)
    else
      render :new
    end
  end

  def show
    @pet_nanny = PetNanny.find(params[:id])
    @booking = Booking.new
    @bookings = Booking.eager_load(:pet_nanny).where("pet_nannies.id = '#{@pet_nanny.id}'")
  end

  private

  def pet_nanny_params
    params.required(:pet_nanny).permit(:introduction)
  end
end

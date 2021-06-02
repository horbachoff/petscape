class PetNanniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query].present? || params[:start_date].present? || params[:end_date].present?
      query_string = "users.address ILIKE :query AND start_date <= :start_date
                      AND end_date >= :start_date AND end_date >= :end_date"
      @pet_nannies = PetNanny.eager_load(:user).where(query_string,
                                                      query: "%#{params[:query]}%",
                                                      start_date: params[:start_date],
                                                      end_date: params[:end_date])
    else
      @pet_nannies = PetNanny.all
    end
    @markers = @pet_nannies.geocoded.map do |pet_nanny|
      {
        lat: pet_nanny.latitude,
        lng: pet_nanny.longitude
      }
    end
  end

  def new
    @pet_nanny = PetNanny.new
  end

  def create
    @pet_nanny = PetNanny.new(pet_nanny_params)
    @pet_nanny.user = current_user
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
    params.required(:pet_nanny).permit(:introduction, :start_date, :end_date)
  end
end

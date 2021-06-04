class PetNanniesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query].present? || params[:start_date].present? || params[:end_date].present?
      query_string = "pet_nannies.start_date <= :start_date
                      AND pet_nannies.end_date >= :start_date AND pet_nannies.end_date >= :end_date"
      @users = User.includes(:pet_nannies).joins(:pet_nannies).where(query_string,
                                                      # query: "%#{params[:query]}%",
                                                      start_date: params[:start_date],
                                                      end_date: params[:end_date])

      # users.address ILIKE :query AND
      @users = @users.geocoded.near(params[:query], 30)
      @pet_nannies = []
      @users.each do |user|
        @pet_nannies.concat(user.pet_nannies)
      end
    else
      @pet_nannies = PetNanny.all
    end
    # nanny_users = User.pet_nannies

    @markers = @pet_nannies.map do |pet_nanny|
      {
        lat: pet_nanny.user.latitude,
        lng: pet_nanny.user.longitude,
        image_url: helpers.asset_url('pet_icon.png')
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

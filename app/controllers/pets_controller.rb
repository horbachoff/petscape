class PetsController < ApplicationController
  def index
    @pets = Pet.where(user: current_user)
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user_id = current_user.id
    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  private

  def pet_params
    params.required(:pet).permit(:name, :photo, :vet_record, :medications, :dietary)
  end
end

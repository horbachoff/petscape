class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet = Pet.save
      redirect_to pet_pa

    redirect_to pets_path(@pet)
  end

  def show
    @pet = Pet.find(params[:id])
  end

  private

  def pet_params
    params.required(:pet).permit(:name, :profile_picture, :vet_record, :medication, :dietary)
  end
end

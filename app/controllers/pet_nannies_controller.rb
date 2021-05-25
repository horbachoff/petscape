class PetNanniesController < ApplicationController
  def index
    @nannies = PetNanny.all
  end
  
  def show
  end
  
  def new
  end

  def create
  end
end

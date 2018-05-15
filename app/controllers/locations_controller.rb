class LocationsController < ApplicationController
  def index
    @locations = policy_scope(Location)
  end

  def new
  end

  def edit
    @location = Location.find(params[:id])
    authorize @location
  end

  def update
    @location = Location.find(params[:id])
    authorize @location
    if @location.update(location_params)
      redirect_to locations_path
    else
      render :edit
    end
  end

  def destroy
  end


  private

  def location_params
    params.require(:location).permit(:name, :address, :city, :state, :zip)
  end
end

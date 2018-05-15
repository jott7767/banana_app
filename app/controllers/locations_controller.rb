class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
  end

  def edit
  end

  def destroy
  end
end

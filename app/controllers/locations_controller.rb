class LocationsController < ApplicationController
  def index
    @locations = policy_scope(Location)
  end

  def new
  end

  def edit
  end

  def destroy
  end
end

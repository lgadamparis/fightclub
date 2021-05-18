class LocationsController < ApplicationController

before_action :set_location, only: %i[ show edit update destroy ]

  def index
    @location = policy_scope(Location)
  end

  def show
  end

  def new
    @location = Location.new
    authorize @location
  end

def create
  @location = Location.new(location_params)
  authorize @location
  @location.user = current_user
  respond_to do |format|
    if @location.save
      format.html { redirect_to @location, notice: "Fight was successfully created." }
      format.json { render :show, status: :created, location: @location }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @location.errors, status: :unprocessable_entity }
    end
  end
end

def destroy
  record.user == user
  @location.destroy
  respond_to do |format|
    format.html { redirect_to locations_url, notice: "Fight was successfully destroyed." }
    format.json { head :no_content }
  end
end

private

def list_params
  params.require(:location).permit(:name, :location)
end

end

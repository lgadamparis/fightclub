class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @figlocation = Fight.new
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to XXX
    else
      render :new
    end
  end

  def destroy
    @location.destroy
    redirect_to XXX
  end

private

def list_params
  params.require(:location).permit(:name, :location)
end

end

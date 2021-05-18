class FightsController < ApplicationController

  def new
    @location = Location.find(params[:location_id])
    @fight = Fight.new
  end

  def create
    @fight = Fight.new(fight_params)
    @location = Location.find(params[:location_id])
    @fight.location = @location
    if @fight.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  private

  def fight_params
    params.require(:fight).permit(:booked, :result, :date, :time)
  end
end


class FightsController < ApplicationController

  def new
    @location = Location.find(params[:location_id])
    @fight = Fight.new
  end

  def create
    @fight = Fight.new(fight_params)
    @location = Location.find(params[:location_id].to_i)
    @fight.location = @location
    @fight.user = current_user
    authorize @fight
    @fight.location = @location
    if @fight.save
      redirect_to locations_path

    else
      render "locations/show"
    end
  end

  private

  def fight_params
    params.require(:fight).permit(:booked, :result, :fight_date)
  end
end


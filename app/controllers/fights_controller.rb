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
    my_fight = false
    begin
      authorize @fight
    rescue Pundit::NotAuthorizedError
      flash[:alert] = 'You cannot punch yourself bastard'
      my_fight = true
    end
    if !my_fight && @fight.save
      redirect_to locations_path
    else
      redirect_to location_path(@location)
    end
  end


  def destroy
    @fight = Fight.find(params[:id])
    authorize(@fight)
      @fight.destroy
      respond_to do |format|
        format.html { redirect_to profile_path, notice: 'fight was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  private

  def fight_params
    params.require(:fight).permit(:booked, :result, :fight_date)
  end
end

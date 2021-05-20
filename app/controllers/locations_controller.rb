class LocationsController < ApplicationController
  before_action :set_location, only: %i[show edit destroy]

  def index
    @locations = policy_scope(Location)
    @markers = @locations.geocoded.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { location: location }),
        id: location.id
        # image_url: helpers.image_path('boxingglove.jpeg')
      }
    end
  end

  def show
    @fight = Fight.new
  end

  def new
    @location = Location.new
    authorize @location
  end

  def edit
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
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to restaurants_url, notice: "Restaurant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_location
    @location = Location.find(params[:id])
    authorize(@location)
  end

  def location_params
    params.require(:location).permit(:name, :location, :starts_at, :ends_at, photos: [])
  end
end

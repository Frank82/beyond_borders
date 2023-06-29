class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = policy_scope(Trip)
  end

  def show
    # authorize @trip
  end

  def new
    @trip = Trip.new
    authorize @trip
  end

  def create
    # @user = User.find(params[:id])
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    authorize @trip
    if @trip.save
      redirect_to @trip, notice: "Trip was successfully created."
    else
      render "new", status: :unprocessable_entity
    end
  end

  def edit
    # authorize @trip
  end

  def update
    # authorize @trip
    if @trip.update(trip_params)
      redirect_to @trip, notice: "Trip was successfully updated."
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    # authorize @trip
    @trip.destroy
    redirect_to trips_path, notice: "Trip was successfully destroyed."
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
    authorize @trip
  end

  def trip_params
    params.require(:trip).permit(:destination, :theme, :date)
  end
end

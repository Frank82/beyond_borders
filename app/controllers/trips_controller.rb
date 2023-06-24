class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def show
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @user = User.find(params[:user_id])
    @trip = Trip.new(trip_params)
    @trip.user = @user
    if @trip.save
      redirect_to trips_path(@trip)
    else
      @trips = @user.trips
      render "trips/show", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def trip_params
    params.require(:trip).permit(:destination, :theme, :date)
  end
end

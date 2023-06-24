def create
  @trip = Trip.new(trip_params)

  if @trip.save
    redirect_to @trip
  else
    render 'new'
  end
end

private

def trip_params
  params.require(:trip).permit(:destination, :user_id, :theme, :date, :budget)
end

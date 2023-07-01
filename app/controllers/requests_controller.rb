class RequestsController < ApplicationController
  before_action :set_request, only: [:edit, :update, :show, :destroy]
  before_action :set_trip, except: [:show]

  def index
    @requests = policy_scope(Request)
  end

  def show
    @request = Request.find(@user.user_id)
    authorize @request
  end

  def new
    # @request = Request.new
  end

  def create
    @request = Request.new
    @request.user = current_user
    @request.trip = @trip
    authorize @request

    if @request.save
      redirect_to trip_path(@trip)
    else
      render :new, status:422
    end
  end

  private


  def set_request
    @request = Request.find(params[:id])
  end

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end
end

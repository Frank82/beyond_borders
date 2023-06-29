class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(@user.user_id)
  end

  def new
    @request = Request.new
  end

  def create

  end

  def detroy

  end
end

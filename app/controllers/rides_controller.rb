class RidesController < ApplicationController
  def create
    @ride = Ride.new(ride_params)
    if @ride.save
      flash[:success] = "Ride created succesfully"
      redirect_to rides_path
    else
      render :new
    end
  end

  def index
    @rides = Ride.all
  end

  def new
    @ride = RidePresenter.new(Ride.new, ActionView::Base.new)
  end

  private

  def ride_params
    params.require(:ride).permit(:destination, :origin, :seats, :vehicle_type)
  end
end

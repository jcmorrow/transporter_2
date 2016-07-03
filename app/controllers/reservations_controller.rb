class ReservationsController < ApplicationController
  def create
    ride = Ride.find(params[:ride_id])
    reservation = Reservation.new(ride: ride)
    if reservation.save
      flash[:success] = "Your seat has been reserved"
    else
      flash[:error] = "There was a problem creating your reservation"
    end
    redirect_to rides_path
  end
end

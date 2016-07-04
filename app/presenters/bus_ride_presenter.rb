class BusRidePresenter < RidePresenter
  def reserve_button
    if @ride.has_available_seats?
      @view.render "bus_rides/reserve_button", ride: @ride
    else
      @view.render "bus_rides/disabled_reserve_button", ride: @ride
    end
  end
end

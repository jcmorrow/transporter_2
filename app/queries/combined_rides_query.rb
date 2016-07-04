class CombinedRidesQuery
  def rides
    car_rides | bus_rides
  end

  private

  def car_rides
    Ride.all
  end

  def bus_rides
    BusRide.all
  end
end

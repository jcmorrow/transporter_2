class RidePresenter < SimpleDelegator
  VEHICLE_TYPES = %w(bus car).freeze

  def initialize(ride, view)
    @ride = ride
    @view = view
    super(@ride)
  end

  def available_seats
    ride.available_seats
  end

  def reserve_button
    if ride.has_available_seats?
      @view.render "rides/reserve_button", ride: @ride
    else
      @view.render "rides/disabled_reserve_button", ride: @ride
    end
  end

  def vehicle_types
    VEHICLE_TYPES
  end

  private

  attr_reader :ride
end

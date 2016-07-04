require "rails_helper"

describe BusRide do
  describe ".default_scope" do
    it "returns only bus rides" do
      bus_ride = create(:ride, vehicle_type: "bus")
      create(:ride)

      expect(Ride.default_scope).to eq([bus_ride])
    end
  end
end

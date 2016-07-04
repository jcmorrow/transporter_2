require "rails_helper"

describe Ride do
  it { should validate_numericality_of(:seats).is_greater_than(0) }

  describe ".default_scope" do
    it "returns only car rides" do
      car_ride = create(:ride)
      create(:ride, vehicle_type: "bus")

      expect(Ride.default_scope).to eq([car_ride])
    end
  end

  describe "#has_available_seats?" do
    context "when there are available seats" do
      it "returns true" do
        ride = create(:ride, seats: 1)

        expect(ride).to have_available_seats
      end
    end

    context "when there are no available seats" do
      it "returns false" do
        ride = create(:ride, seats: 1)
        create(:reservation, ride: ride)

        expect(ride).not_to have_available_seats
      end
    end
  end
end

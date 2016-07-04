class BusRide < Ride
  validates :price, numericality: { greater_than: 0 }

  def self.default_scope
    where(vehicle_type: "bus")
  end

  def price_in_dollars=(new_price)
    write_attribute(:price_in_cents, new_price.to_f * 100.0)
  end
end

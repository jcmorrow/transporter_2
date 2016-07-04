class Ride < ActiveRecord::Base
  has_many :reservations

  validates :seats, numericality: { greater_than: 0 }

  def self.default_scope
    where(vehicle_type: "car")
  end

  def has_available_seats?
    available_seats > 0
  end

  def available_seats
    seats - reservations.count
  end

  def price_in_dollars=(new_price)
    write_attribute(:price_in_cents, new_price.to_f * 100.0)
  end
end

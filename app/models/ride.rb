class Ride < ActiveRecord::Base
  has_many :reservations

  validates :seats, numericality: { greater_than: 0 }

  def has_available_seats?
    available_seats > 0
  end

  def available_seats
    seats - reservations.count
  end
end

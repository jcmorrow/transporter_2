class Ride < ActiveRecord::Base
  has_many :reservations

  def has_available_seats?
    available_seats > 0
  end

  def available_seats
    seats - reservations.count
  end
end

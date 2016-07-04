require "rails_helper"

describe Ride do
  it { should validate_numericality_of(:seats).is_greater_than(0) }
end

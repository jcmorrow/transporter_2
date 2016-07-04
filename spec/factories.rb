FactoryGirl.define do
  factory :ride do
    origin "San Francisco"
    destination "New York"
    seats "3"
  end

  factory :reservation do
    ride
  end
end

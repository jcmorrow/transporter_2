require "rails_helper"

feature "User creates bus ride" do
  scenario "and sees the ride details" do
    visit new_ride_path

    select "Bus", from: "Vehicle type"
    fill_in "Destination", with: "New York"
    fill_in "Origin", with: "San Francisco"
    fill_in "Seats", with: 30
    fill_in "Price", with: "10.00"

    expect(page).to have_content("New York")
    expect(page).to have_content("San Francisco")
    expect(page).to have_content("3")
    expect(page).to have_content("$10.00")
  end
end

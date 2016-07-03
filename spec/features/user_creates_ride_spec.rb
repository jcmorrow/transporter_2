require "rails_helper"

feature "User creates ride" do
  context "with valid details" do
    scenario "and sees those details" do
      visit new_ride_path

      fill_in "Destination", with: "New York"
      fill_in "Origin", with: "San Francisco"
      fill_in "Seats", with: 3
      click_on "Create Ride"

      expect(page).to have_content("New York")
      expect(page).to have_content("San Francisco")
      expect(page).to have_content("3")
    end
  end
end

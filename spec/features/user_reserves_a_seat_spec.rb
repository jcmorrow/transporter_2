require "rails_helper"

feature "User reserves a seat" do
  context "on a ride with available seats" do
    scenario "and sees a confirmation message" do
      create(:ride)

      visit rides_path
      click_on "Reserve a seat"

      expect(page).to have_content("Your seat has been reserved")
    end
  end
end

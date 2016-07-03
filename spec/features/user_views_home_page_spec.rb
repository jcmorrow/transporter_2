require "rails_helper"

feature "User views home page" do
  scenario "and sees the name of the app" do
    visit root_path

    expect(page).to have_content("Transporter 2")
  end
end

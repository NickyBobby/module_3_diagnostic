require 'rails_helper'

RSpec.feature "user can enter in zip code" do
  scenario "user sees list of top ten closest stations" do
    visit "/"
    # save_and_open_page
    fill_in "q", with: "80203"
    click_on "Locate"
    expect(current_path).to eq "/search?zip=80203"
    expect(page).to have_content "CADACHARGEPOINT"
    expect(page).to have_content "290 E Speer Blvd Denver, CO 80203"
    expect(page).to have_content "24 hours daily"
  end
end


# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search?zip=80203"
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

require "rails_helper"

RSpec.describe "updating a player" do
  it "updates the player and redirect to the root page" do
  	player = Player.create(first_name: "Roy", last_name: "Mao")
  	visit root_path
  	expect(page).to have_text("Roy")
  	click_link "Edit profile"
  	fill_in "First name", with: "Ryan"
  	click_button "Update Player"
  	expect(current_path).to eq(root_path)
  	expect(page).not_to have_text("Roy")
  	expect(page).to have_text("Ryan")
  end
end 
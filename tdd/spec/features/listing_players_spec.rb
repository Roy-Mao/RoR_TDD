require "rails_helper"

RSpec.describe "list players" do
  it "displays the first name and last name from the players saved" do
    player1 = Player.create(first_name: "Roy", last_name: "Mao")
    player2 = Player.create(first_name: "Ryan", last_name: "Brill")

    visit root_path

    expect(page).to have_text("Roy")
    expect(page).to have_text("Mao")
    expect(page).to have_text("Ryan")
    expect(page).to have_text("Brill")

    expect(page).to have_link("New Player") 
  end
end
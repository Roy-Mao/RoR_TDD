require "rails_helper"

RSpec.describe "destroy a player" do
  it "destroys the player correctly and redirect to the root path" do
    player = Player.create(first_name: "Roy", last_name: "Mao")
    visit root_path
    click_link "Delete profile"
    expect(page).not_to have_text("Roy")
    expect(current_path).to eq(root_path)
  end
end
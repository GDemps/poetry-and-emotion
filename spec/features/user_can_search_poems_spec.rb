require 'rails_helper'

describe "User can search for poems" do
  it "can get poems from search" do
    visit "/"

    fill_in :author, with: "Emily"

    click_button "Get Poems"

    expect(current_path).to eq("/search")
    
  end
end

# As a user
# When I visit "/"
# And I fill in "Emily" in the textfield(Note: Use the existing search form)
# And I click "Get Poems"
# Then I should be on page "/search"
# Then I should see a list of the first 10 poems
# Then I should see the tone or tones listed for each poem.
# For each poem I should see
# - Title
# - Author
# - The poem(as a single string)
# I should also see:
# - The tone or tones for each poem

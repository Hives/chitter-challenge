require 'sign_up_helper'

# As a Maker
# So that I can better appreciate the context of a peep
# I want to see the time at which it was made

feature 'View time of peep' do
  scenario 'The time and date of peeps are displayed' do
    sign_up 'Paul Martin', 'Hivemind'
    visit '/'
    fill_in 'peep_content', with: "This is my peep"
    click_button 'Peep'
    time = Peep.all[0].created_at
    expect(page).to have_content(time.strftime('%F %H:%M%P'))
  end
end

# Not a user story, but from the exercise's "notes on functionality":
# - Peeps (posts to chitter) have the name of the maker and their user handle.

feature 'View author of peep' do
  scenario "The name and username of peeps' authors are displayed" do
  end
end
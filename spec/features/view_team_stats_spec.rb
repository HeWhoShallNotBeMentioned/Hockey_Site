require 'rails_helper'

describe "view the team specs process", :js => true do
  it "will make sure that data shows on the screen " do
    login_user
    visit team_stats_path
    expect(page).to have_content("0.0")
  end
end

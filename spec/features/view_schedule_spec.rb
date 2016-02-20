require 'rails_helper'

describe "view the team specs process", :js => true do
  it "will make sure that data shows on the screen " do
    login_user
    visit schedules_path
    expect(page).to have_content("Today")
  end
end

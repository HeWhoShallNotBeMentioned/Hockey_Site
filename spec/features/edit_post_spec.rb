require 'rails_helper'
require 'helpers/login_helper'

describe "the add a new post process", :js => true do

  it "adds a new question" do
    post = FactoryGirl.create(:post)
    login_user
    visit posts_path
save_and_open_page
    click_link "Larkin Rules"
    click_on "Edit Post"
    fill_in "Title", :with => "Larkin Is Great"
    fill_in "Body", :with => "Better than Federov"
    click_on "Update Post"
    expect(page).to have_content "Larkin Is Great"
  end
end

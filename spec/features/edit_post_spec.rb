require 'rails_helper'

describe "the add a new post process", :js => true do
  def log_in (user)
    visit posts_path
    click_on "Login"
    fill_in "Username", :with => user.username
    fill_in "Password", :with => user.password
    click_on "Log in"
  end

  it "adds a new question" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post)
    log_in(user)
    visit posts_path
    click_on "Larkin Rules"
    click_on "Edit Post"
    fill_in "Title", :with => "Larkin Is Great"
    fill_in "Body", :with => "Better than Federov"
    click_on "Update Post"
    expect(page).to have_content "Larkin Is Great"
  end
end

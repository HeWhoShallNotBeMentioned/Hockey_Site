require 'rails_helper'

describe "the add a new post process" do
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
    click_on "New Post"
    fill_in "Title", :with => post.title
    fill_in "Body", :with => post.body
    click_on "Create Post"
    expect(page).to have_content "Larkin"
  end
end

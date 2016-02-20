require 'rails_helper'
require 'helpers/create_post_helper'

describe "the add a new tag process", :js => true do
  post = FactoryGirl.create(:post)
  comment = FactoryGirl.create(:comment)
  tag = FactoryGirl.create(:tag)
  it "adds a new comment", :js => true do
    login_user
    post_create
    first(:link, "Larkin Rules").click
    click_on "New Tag"
    fill_in "Name", :with => tag.name
    click_on "Create Tag"
    expect(page).to have_content "knockout"
  end
end

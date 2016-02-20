require 'rails_helper'
require 'helpers/create_post_helper'
require 'helpers/create_comment_helper'

describe "the edit comment process", :js => true do
  post = FactoryGirl.create(:post)
  comment = FactoryGirl.create(:comment)
  tag = FactoryGirl.create(:tag)
  it "edits a comment", :js => true do
    login_user
    post_create
    first(:link, "Larkin Rules").click
    click_on "New Tag"
    fill_in "Name", :with => tag.name
    click_on "Create Tag"
    click_on "Edit Tag"
    fill_in "Name", :with => "punchout"
    click_on "Update Tag"
    expect(page).to have_content "punchout"
  end
end

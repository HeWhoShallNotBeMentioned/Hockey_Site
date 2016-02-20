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
    page.accept_alert 'Are you sure?' do
      click_on 'Delete Tag'
    end
    expect(page).to have_no_content "knockout"
  end
end

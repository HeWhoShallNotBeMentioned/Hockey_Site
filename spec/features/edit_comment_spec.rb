require 'rails_helper'
require 'helpers/create_post_helper'
require 'helpers/create_comment_helper'

describe "the edit comment process", :js => true do
  post = FactoryGirl.create(:post)
  comment = FactoryGirl.create(:comment)
  it "edits a comment", :js => true do
    login_user
    post_create
    first(:link, "Larkin Rules").click
    click_on "New Comment"
    fill_in "Body", :with => comment.body
    click_on "Create Comment"
    click_on "Edit Comment"
    fill_in "Body", :with => "Your mama looks like prune juice..."
    click_on "Update Comment"
    expect(page).to have_content "prune"
  end
end

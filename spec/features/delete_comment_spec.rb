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
    page.accept_alert 'Are you sure?' do
      click_on 'Delete Comment'
    end
    expect(page).to have_no_content( "turpentine")
  end
end

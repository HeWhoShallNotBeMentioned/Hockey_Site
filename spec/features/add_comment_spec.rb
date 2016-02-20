require 'rails_helper'
require 'helpers/create_post_helper'

describe "the add a new comment process", :js => true do

  comment = FactoryGirl.create(:comment)
  it "adds a new comment", :js => true do
    login_user
    first(:link, "Larkin Rules").click
    click_on "New Comment"
    fill_in "Body", :with => comment.body
    click_on "Create Comment"
    expect(page).to have_content "turpentine"
  end
end

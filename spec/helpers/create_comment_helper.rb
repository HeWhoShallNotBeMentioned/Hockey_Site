require 'rails_helper'

def comment_create
  comment = FactoryGirl.create(:comment)
  visit new_post_comment_path
  click_on "New Comment"
  fill_in "Body", :with => comment.body
  click_button "Create Comment"
end

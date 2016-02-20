require 'rails_helper'

def post_create
  post = FactoryGirl.create(:post)
  visit new_post_path
  fill_in "Title", :with => post.title
  fill_in "Body", :with => post.body
  click_on "Create Post"
end

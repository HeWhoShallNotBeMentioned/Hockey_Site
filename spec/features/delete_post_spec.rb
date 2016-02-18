require 'rails_helper'
require 'helpers/login_helper'

describe "the delete a new post process", :js => true do
  post = FactoryGirl.create(:post)
  it "deletes a post", :js => true do
    login_user
    visit posts_path
    click_on "New Post"
    fill_in "Title", :with => post.title
    fill_in "Body", :with => post.body
    click_on "Create Post"
    click_link "Larkin Rules"
    click_on "Delete Post"
    expect(page).to have_content "Listing Posts"
  end
end

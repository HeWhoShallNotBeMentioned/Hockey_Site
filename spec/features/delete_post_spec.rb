require 'rails_helper'
require 'helpers/login_helper'
require 'helpers/create_post_helper'


describe "the delete a new post process", :js => true do
  post = FactoryGirl.create(:post)
  it "deletes a post", :js => true do
    DatabaseCleaner.clean
    login_user
    visit new_post_path
    fill_in "Title", :with => post.title
    fill_in "Body", :with => post.body
    click_on "Create Post"
    click_on "Larkin Rules"
    click_on "Delete Post"
    expect(page).to have_no_content "Larkin Rules"
  end
end

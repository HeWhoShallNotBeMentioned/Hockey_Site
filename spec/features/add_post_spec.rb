require 'rails_helper'
require 'helpers/login_helper'

describe "the add a new post process", :js => true do
  post = FactoryGirl.create(:post)
  it "adds a new question", :js => true do
    login_user
    visit posts_path
    click_on "New Post"
    fill_in "Title", :with => post.title
    fill_in "Body", :with => post.body
    click_on "Create Post"
    expect(page).to have_content "Larkin"
  end
end

require 'rails_helper'
require 'helpers/login_helper'
require 'helpers/create_post_helper'

describe "the delete a new post process", :js => true do
  it "deletes a post", :js => true do
    login_user
    visit posts_path
    post_create
    first(:link, "Larkin Rules").click
    click_on "Delete Post"
    expect(page).to have_content "Listing Posts"
  end
end

require 'rails_helper'
require 'helpers/login_helper'
require 'helpers/create_post_helper'


describe "the add a new post process", :js => true do
  post = FactoryGirl.create(:post)
  it "adds a new post", :js => true do
    login_user
    post_create
    expect(page).to have_content "Larkin"
  end
end

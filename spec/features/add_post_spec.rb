require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit posts_path
    click_link 'New Post'
    fill_in 'Title', :with => 'Larkin Rules'
    fill_in 'Body', :with => 'Larkin is the new Yzerman'
    click_on 'Create Post'
    expect(page).to have_content 'Larkin'
  end
end

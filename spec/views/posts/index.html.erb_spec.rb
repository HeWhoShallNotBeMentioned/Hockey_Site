require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :title => "Title",
        :body => "MyText"
      ),
      Post.create!(
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "h2", :text => "Title".to_s, :count => 2
    assert_select "p", :text => "MyText".to_s, :count => 2
  end
end

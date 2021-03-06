require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :content => "MyText",
      :commentable_id => 1,
      :commentable_type => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "textarea#comment_content[name=?]", "comment[content]"

      assert_select "input#comment_commentable_id[name=?]", "comment[commentable_id]"

      assert_select "input#comment_commentable_type[name=?]", "comment[commentable_type]"
    end
  end
end

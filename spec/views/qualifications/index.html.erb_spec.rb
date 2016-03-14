require 'rails_helper'

RSpec.describe "qualifications/index", type: :view do
  before(:each) do
    assign(:qualifications, [
      Qualification.create!(
        :customer_id => 1,
        :restaurant_id => 2,
        :note => 1.5,
        :amount_spent => 1.5
      ),
      Qualification.create!(
        :customer_id => 1,
        :restaurant_id => 2,
        :note => 1.5,
        :amount_spent => 1.5
      )
    ])
  end

  it "renders a list of qualifications" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end

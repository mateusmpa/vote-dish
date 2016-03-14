require 'rails_helper'

RSpec.describe "qualifications/new", type: :view do
  before(:each) do
    assign(:qualification, Qualification.new(
      :customer_id => 1,
      :restaurant_id => 1,
      :note => 1.5,
      :amount_spent => 1.5
    ))
  end

  it "renders new qualification form" do
    render

    assert_select "form[action=?][method=?]", qualifications_path, "post" do

      assert_select "input#qualification_customer_id[name=?]", "qualification[customer_id]"

      assert_select "input#qualification_restaurant_id[name=?]", "qualification[restaurant_id]"

      assert_select "input#qualification_note[name=?]", "qualification[note]"

      assert_select "input#qualification_amount_spent[name=?]", "qualification[amount_spent]"
    end
  end
end

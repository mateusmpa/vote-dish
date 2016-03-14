require 'rails_helper'

RSpec.describe "qualifications/edit", type: :view do
  before(:each) do
    @qualification = assign(:qualification, Qualification.create!(
      :customer_id => 1,
      :restaurant_id => 1,
      :note => 1.5,
      :amount_spent => 1.5
    ))
  end

  it "renders the edit qualification form" do
    render

    assert_select "form[action=?][method=?]", qualification_path(@qualification), "post" do

      assert_select "input#qualification_customer_id[name=?]", "qualification[customer_id]"

      assert_select "input#qualification_restaurant_id[name=?]", "qualification[restaurant_id]"

      assert_select "input#qualification_note[name=?]", "qualification[note]"

      assert_select "input#qualification_amount_spent[name=?]", "qualification[amount_spent]"
    end
  end
end

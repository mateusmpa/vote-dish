require 'rails_helper'

RSpec.describe "qualifications/show", type: :view do
  before(:each) do
    @qualification = assign(:qualification, Qualification.create!(
      :customer_id => 1,
      :restaurant_id => 2,
      :note => 1.5,
      :amount_spent => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end

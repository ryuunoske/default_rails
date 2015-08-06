require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :latitude => 1.5,
        :longitude => 1.5
      ),
      Location.create!(
        :latitude => 1.5,
        :longitude => 1.5
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end

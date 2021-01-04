require 'rails_helper'

RSpec.describe "actors/index", type: :view do
  before(:each) do
    assign(:actors, [
      Actor.create!(
        name: "Name",
        age: 2
      ),
      Actor.create!(
        name: "Name",
        age: 2
      )
    ])
  end

  it "renders a list of actors" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end

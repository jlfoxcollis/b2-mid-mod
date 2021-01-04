require 'rails_helper'

RSpec.describe "studios/show", type: :view do
  before(:each) do
    @studio = assign(:studio, Studio.create!(
      name: "Name",
      location: "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
  end
end

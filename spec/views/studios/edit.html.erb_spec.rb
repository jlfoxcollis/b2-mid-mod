require 'rails_helper'

RSpec.describe "studios/edit", type: :view do
  before(:each) do
    @studio = assign(:studio, Studio.create!(
      name: "MyString",
      location: "MyString"
    ))
  end

  it "renders the edit studio form" do
    render

    assert_select "form[action=?][method=?]", studio_path(@studio), "post" do

      assert_select "input[name=?]", "studio[name]"

      assert_select "input[name=?]", "studio[location]"
    end
  end
end

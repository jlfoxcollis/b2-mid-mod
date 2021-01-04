require 'rails_helper'

RSpec.describe "studios/new", type: :view do
  before(:each) do
    assign(:studio, Studio.new(
      name: "MyString",
      location: "MyString"
    ))
  end

  it "renders new studio form" do
    render

    assert_select "form[action=?][method=?]", studios_path, "post" do

      assert_select "input[name=?]", "studio[name]"

      assert_select "input[name=?]", "studio[location]"
    end
  end
end

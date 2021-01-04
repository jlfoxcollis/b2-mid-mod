require 'rails_helper'

RSpec.describe "actors/edit", type: :view do
  before(:each) do
    @actor = assign(:actor, Actor.create!(
      name: "MyString",
      age: 1
    ))
  end

  it "renders the edit actor form" do
    render

    assert_select "form[action=?][method=?]", actor_path(@actor), "post" do

      assert_select "input[name=?]", "actor[name]"

      assert_select "input[name=?]", "actor[age]"
    end
  end
end

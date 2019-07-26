require 'rails_helper'

RSpec.describe "talk_rooms/new", type: :view do
  before(:each) do
    assign(:talk_room, TalkRoom.new(
      :member => "MyString"
    ))
  end

  it "renders new talk_room form" do
    render

    assert_select "form[action=?][method=?]", talk_rooms_path, "post" do

      assert_select "input[name=?]", "talk_room[member]"
    end
  end
end

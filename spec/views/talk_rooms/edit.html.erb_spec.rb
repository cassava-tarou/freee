require 'rails_helper'

RSpec.describe "talk_rooms/edit", type: :view do
  before(:each) do
    @talk_room = assign(:talk_room, TalkRoom.create!(
      :member => "MyString"
    ))
  end

  it "renders the edit talk_room form" do
    render

    assert_select "form[action=?][method=?]", talk_room_path(@talk_room), "post" do

      assert_select "input[name=?]", "talk_room[member]"
    end
  end
end

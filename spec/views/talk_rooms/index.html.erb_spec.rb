require 'rails_helper'

RSpec.describe "talk_rooms/index", type: :view do
  before(:each) do
    assign(:talk_rooms, [
      TalkRoom.create!(
        :member => "Member"
      ),
      TalkRoom.create!(
        :member => "Member"
      )
    ])
  end

  it "renders a list of talk_rooms" do
    render
    assert_select "tr>td", :text => "Member".to_s, :count => 2
  end
end

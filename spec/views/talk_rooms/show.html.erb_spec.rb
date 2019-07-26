require 'rails_helper'

RSpec.describe "talk_rooms/show", type: :view do
  before(:each) do
    @talk_room = assign(:talk_room, TalkRoom.create!(
      :member => "Member"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Member/)
  end
end

require 'rails_helper'

RSpec.describe "TalkRooms", type: :request do
  describe "GET /talk_rooms" do
    it "works! (now write some real specs)" do
      get talk_rooms_path
      expect(response).to have_http_status(200)
    end
  end
end

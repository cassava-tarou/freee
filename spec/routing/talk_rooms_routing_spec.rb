require "rails_helper"

RSpec.describe TalkRoomsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/talk_rooms").to route_to("talk_rooms#index")
    end

    it "routes to #new" do
      expect(:get => "/talk_rooms/new").to route_to("talk_rooms#new")
    end

    it "routes to #show" do
      expect(:get => "/talk_rooms/1").to route_to("talk_rooms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/talk_rooms/1/edit").to route_to("talk_rooms#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/talk_rooms").to route_to("talk_rooms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/talk_rooms/1").to route_to("talk_rooms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/talk_rooms/1").to route_to("talk_rooms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/talk_rooms/1").to route_to("talk_rooms#destroy", :id => "1")
    end
  end
end

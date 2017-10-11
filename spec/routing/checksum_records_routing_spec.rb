require "rails_helper"

RSpec.describe ChecksumRecordsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/checksum_records").to route_to("checksum_records#index")
    end


    it "routes to #show" do
      expect(:get => "/checksum_records/1").to route_to("checksum_records#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/checksum_records").to route_to("checksum_records#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/checksum_records/1").to route_to("checksum_records#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/checksum_records/1").to route_to("checksum_records#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/checksum_records/1").to route_to("checksum_records#destroy", :id => "1")
    end

  end
end

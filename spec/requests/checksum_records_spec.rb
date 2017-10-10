require 'rails_helper'

RSpec.describe "ChecksumRecords", type: :request do
  describe "GET /checksum_records" do
    it "works! (now write some real specs)" do
      get checksum_records_path
      expect(response).to have_http_status(200)
    end
  end
end

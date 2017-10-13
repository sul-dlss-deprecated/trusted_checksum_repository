require 'rails_helper'

RSpec.describe ChecksumRecordsController, type: :routing do
  describe 'routing' do

    it 'routes to #show via GET' do
      expect(get: '/checksum_records/1').to route_to('checksum_records#show', id: '1')
    end

    it 'routes to #create via POST' do
      expect(post: '/checksum_records').to route_to('checksum_records#create')
    end

    it 'does not route to #update vis PATCH' do
      expect(patch: '/checksum_records').not_to be_routable
    end

    it 'does not route to #update vis PUT' do
      expect(put: '/checksum_records').not_to be_routable
    end

    it 'does not route to #index' do
      expect(get: '/checksum_records').not_to be_routable
    end

    it 'does not route to #destroy' do
      expect(delete: '/checksum_records').not_to be_routable
    end
  end
end

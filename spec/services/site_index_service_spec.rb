require 'rails_helper'

RSpec.describe SiteIndexService, type: :service do
  describe '#self.create' do
    subject { SiteIndexService.create(params) }

    context 'model saved' do
      let(:params) { { url: 'http://google.com' } }
      it 'calls site index job' do
        expect(SiteIndexJob).to receive(:perform_later).with(kind_of(SiteIndex))
        subject
      end
    end

    context 'model not saved' do
      let(:params) { { url: '' } }

      it 'does nothing' do
        expect(SiteIndexJob).not_to receive(:perform_later)
        subject
      end
    end
  end
end

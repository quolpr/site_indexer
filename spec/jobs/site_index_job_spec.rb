require 'rails_helper'

RSpec.describe SiteIndexJob, type: :job do
  subject { SiteIndexJob.perform_now(site_index) }
  let(:site_index) { create :site_index }
  let(:url) { 'http://rubyonrails.org/' }

  before do
    allow(HtmlParser).to receive(:from_url).and_return(
      [http_status, parse_result]
    )
  end

  let(:parse_result) { [{ 'tag' => 'h1', 'content' => 'test' }] }
  let(:http_status) { 200 }

  it 'parse data from site' do
    expect(HtmlParser).to receive(:from_url).with(url)
    subject
  end

  it 'saves parsed data' do
    expect { subject }.to change {
      SiteIndex::Content.where(tag: 'h1', content: 'test').count
    }.by(1)
  end

  it 'changes status to done' do
    expect { subject }.to change { site_index.reload.status }.to('done')
  end

  it 'set http status' do
    expect { subject }.to change { site_index.reload.http_status }.to('200')
  end

  context 'expection occured' do
    it 'changes site_index state to error' do
      expect(HtmlParser).to receive(:from_url).and_raise(Errno::ECONNREFUSED)
      expect { subject }.to change { site_index.reload.status }.to('error')
    end
  end
end

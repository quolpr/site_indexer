require 'rails_helper'

RSpec.describe HtmlParser do
  subject(:parser) { HtmlParser.new(html, whitelist) }
  let(:html) { '<h1><style>dasd</style></h1><style>dasd</style>' }
  let(:whitelist) { %w(h1 a) }

  describe '#parse' do
    subject { parser.parse }
    let(:html) { '<h1>test</h1>' }

    context 'when tag in whitelist' do
      it 'includes in output array' do
        is_expected.to eq [
          { 'tag' => 'h1', 'content' => 'test' }
        ]
      end
    end

    context 'when tag not in whitelist' do
      let(:whitelist) { %w(h2) }

      it 'not includes in output array' do
        is_expected.to eq []
      end
    end

    context 'when one tag inside another' do
      let(:html) { '<h1><style>test2</style>test</h1>' }

      it 'takes text from nested tag' do
        is_expected.to eq [
          { 'tag' => 'h1', 'content' => 'test2test' }
        ]
      end

      context 'when nested tag in whitelist' do
        let(:whitelist) { %w(h1 style) }
        it 'includes in output array' do
          is_expected.to eq [
            { 'tag' => 'h1', 'content' => 'test2test' },
            { 'tag' => 'style', 'content' => 'test2' }
          ]
        end
      end
    end
  end

  describe '#self.from_url' do
    subject { HtmlParser.from_url(url) }
    let(:net_result) { double(code: '200', body: 'test') }
    let(:url) { 'http://google.com' }

    before { allow(Net::HTTP).to receive(:get_response).and_return(net_result) }

    it 'gets page by url' do
      expect(Net::HTTP).to receive(:get_response).and_return(net_result)
      expect(subject.first).to eq('200')
    end

    it 'parses body' do
      expect(HtmlParser).to receive(:from_text).with('test').and_return('test2')
      expect(subject.last).to eq('test2')
    end
  end
end

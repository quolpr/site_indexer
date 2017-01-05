require 'rails_helper'
require 'rspec_api_documentation/dsl'

RSpec.resource 'SiteIndices' do
  header 'Content-Type', 'application/json'
  header 'Accept', 'application/json'

  get '/site_indices' do
    before { create :site_index, :with_content }
    example 'Listing orders' do
      do_request

      expect(status).to eq 200
    end
  end

  post '/site_indices' do
    parameter :url, 'Url of the site', required: true, scope: :site_index

    example 'Creating site index' do
      do_request(site_index: { url: 'http://google.com' })

      expect(status).to eq 201
    end
  end
end

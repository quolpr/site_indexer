class SiteIndexJob < ApplicationJob
  queue_as :default

  def perform(site_index)
    ActiveRecord::Base.transaction do
      begin
        http_status, parse_result = HtmlParser.from_url(site_index.url)
        site_index.contents.create!(parse_result)
        site_index.update!(status: 'done', http_status: http_status)
      rescue Errno::ECONNREFUSED => e
        site_index.update!(status: 'error')
      end
    end
  end
end

class SiteIndexService
  def self.create(params)
    SiteIndex.new(params).tap do |site_index|
      SiteIndexJob.perform_later(site_index) if site_index.save
    end
  end
end

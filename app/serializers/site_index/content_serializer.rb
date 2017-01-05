class SiteIndex::ContentSerializer < ActiveModel::Serializer
  attributes :id, :tag, :content, :created_at, :updated_at
  belongs_to :site_index
end

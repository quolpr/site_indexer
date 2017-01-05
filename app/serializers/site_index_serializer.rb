class SiteIndexSerializer < ActiveModel::Serializer
  attributes :id, :url, :status, :http_status, :created_at, :updated_at

  has_many :contents
end

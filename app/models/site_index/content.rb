# == Schema Information
#
# Table name: site_index_contents
#
#  id            :integer          not null, primary key
#  tag           :string
#  content       :string
#  site_index_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class SiteIndex::Content < ApplicationRecord
  belongs_to :site_index

  validates :tag, :content, :site_index, presence: true
end

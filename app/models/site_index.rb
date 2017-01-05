# == Schema Information
#
# Table name: site_indices
#
#  id          :integer          not null, primary key
#  url         :string
#  status      :string           default("in_progress")
#  http_status :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class SiteIndex < ApplicationRecord
  enum status: { in_progress: 'in_progress', done: 'done', error: 'error' }
  has_many :contents

  validates :url, :status, presence: true
end

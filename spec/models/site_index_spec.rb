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

require 'rails_helper'

RSpec.describe SiteIndex, type: :model do
  it { should have_many :contents }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:status) }
end

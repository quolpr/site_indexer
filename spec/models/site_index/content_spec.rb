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

require 'rails_helper'

RSpec.describe SiteIndex::Content, type: :model do
  it { should belong_to :site_index }

  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:tag) }
  it { should validate_presence_of(:site_index) }
end

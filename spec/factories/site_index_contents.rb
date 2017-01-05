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

FactoryGirl.define do
  factory :site_index_content, class: 'SiteIndex::Content' do
    tag 'h1'
    content 'content'
  end
end

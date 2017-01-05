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

FactoryGirl.define do
  factory :site_index do
    url 'http://rubyonrails.org/'

    trait :with_content do
      contents { build_list :site_index_content, 3 }
    end
  end
end

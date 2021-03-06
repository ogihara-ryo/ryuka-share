# == Schema Information
#
# Table name: topic_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TopicCategory < ActiveRecord::Base
  has_many :topics, foreign_key: :category_id
end

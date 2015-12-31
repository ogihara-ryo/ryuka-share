# == Schema Information
#
# Table name: topics
#
#  id          :integer          not null, primary key
#  author_id   :integer
#  category_id :integer
#  title       :string
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Topic < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: :author_id
  belongs_to :category, class_name: :TopicCategory, foreign_key: :category_id
end

# == Schema Information
#
# Table name: schedules
#
#  id          :integer          not null, primary key
#  author_id   :integer
#  start       :datetime
#  end         :datetime
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Schedule < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: :author_id
  has_many :assigned_schedules_relations
  has_many :assigns, through: :assigned_schedules_relations, source: :user
end

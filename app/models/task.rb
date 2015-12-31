# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  author_id   :integer
#  category_id :integer
#  title       :string
#  description :text
#  priority    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Task < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: :author_id
  belongs_to :category, class_name: :TaskCategory, foreign_key: :category_id
  has_many :assigned_tasks_relations
  has_many :assigns, through: :assigned_tasks_relations, source: :user
end

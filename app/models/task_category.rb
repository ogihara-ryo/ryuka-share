# == Schema Information
#
# Table name: task_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TaskCategory < ActiveRecord::Base
  has_many :tasks
end

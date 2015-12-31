# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  signin_id  :string           not null
#  password   :string           not null
#  admin      :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_one :profile
  has_many :groups
  has_many :created_tasks, class_name: :Task
  has_many :assigned_tasks_relations
  has_many :assigned_tasks, through: :assigned_tasks_relations, source: :task
  has_many :created_topics, class_name: :Topic
  has_many :send_messages, class_name: :Message
  has_many :messages_relations
  has_many :receive_messages, through: :messages_relations, source: :message
  has_many :created_schedules, class_name: :Schedule
  has_many :assigned_schedules_relations
  has_many :assigned_schedules, through: :assigned_schedules_relations, source: :schedule
end

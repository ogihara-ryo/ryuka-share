# == Schema Information
#
# Table name: assigned_tasks_relations
#
#  id      :integer          not null, primary key
#  user_id :integer          not null
#  task_id :integer          not null
#

class AssignedTasksRelation < ActiveRecord::Base
  belongs_to :user
  belongs_to :task
end

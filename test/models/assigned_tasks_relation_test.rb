# == Schema Information
#
# Table name: assigned_tasks_relations
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  task_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AssignedTasksRelationTest < ActiveSupport::TestCase
  def setup
    @assigned_tasks_relation = AssignedTasksRelation.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @assigned_tasks_relation, :id
    assert_respond_to @assigned_tasks_relation, :user_id
    assert_respond_to @assigned_tasks_relation, :task_id
    assert_respond_to @assigned_tasks_relation, :created_at
    assert_respond_to @assigned_tasks_relation, :updated_at
    assert_respond_to @assigned_tasks_relation, :user
    assert_respond_to @assigned_tasks_relation, :task
  end
end

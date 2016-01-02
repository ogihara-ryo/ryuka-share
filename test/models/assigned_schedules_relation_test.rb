# == Schema Information
#
# Table name: assigned_schedules_relations
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  schedule_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AssignedSchedulesRelationTest < ActiveSupport::TestCase
  def setup
    @assigned_schedules_relation = AssignedSchedulesRelation.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @assigned_schedules_relation, :id
    assert_respond_to @assigned_schedules_relation, :user_id
    assert_respond_to @assigned_schedules_relation, :schedule_id
    assert_respond_to @assigned_schedules_relation, :created_at
    assert_respond_to @assigned_schedules_relation, :updated_at
    assert_respond_to @assigned_schedules_relation, :user
    assert_respond_to @assigned_schedules_relation, :schedule
  end
end

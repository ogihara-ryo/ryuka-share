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

class AssignedSchedulesRelation < ActiveRecord::Base
  belongs_to :user
  belongs_to :schedule
end

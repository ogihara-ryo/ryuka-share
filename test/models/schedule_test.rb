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

require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase
  def setup
    @schedule = Schedule.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @schedule, :id
    assert_respond_to @schedule, :author
    assert_respond_to @schedule, :start
    assert_respond_to @schedule, :end
    assert_respond_to @schedule, :title
    assert_respond_to @schedule, :description
    assert_respond_to @schedule, :created_at
    assert_respond_to @schedule, :updated_at
    assert_respond_to @schedule, :assigns
  end
end

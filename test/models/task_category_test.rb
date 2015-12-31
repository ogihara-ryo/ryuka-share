# == Schema Information
#
# Table name: task_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TaskCategoryTest < ActiveSupport::TestCase
  def setup
    @task_category = TaskCategory.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @task_category, :id
    assert_respond_to @task_category, :name
    assert_respond_to @task_category, :tasks
    assert_respond_to @task_category, :created_at
    assert_respond_to @task_category, :updated_at
  end
end

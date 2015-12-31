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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def setup
    @task = Task.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @task, :id
    assert_respond_to @task, :author
    assert_respond_to @task, :category
    assert_respond_to @task, :category_id
    assert_respond_to @task, :title
    assert_respond_to @task, :description
    assert_respond_to @task, :priority
    assert_respond_to @task, :created_at
    assert_respond_to @task, :updated_at
    assert_respond_to @task, :assigns
  end
end

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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @user, :id
    assert_respond_to @user, :signin_id
    assert_respond_to @user, :password
    assert_respond_to @user, :admin
    assert_respond_to @user, :created_at
    assert_respond_to @user, :updated_at
    assert_respond_to @user, :profile
    assert_respond_to @user, :groups
    assert_respond_to @user, :created_tasks
    assert_respond_to @user, :assigned_tasks
    assert_respond_to @user, :created_topics
    assert_respond_to @user, :send_messages
    assert_respond_to @user, :receive_messages
    assert_respond_to @user, :created_schedules
    assert_respond_to @user, :assigned_schedules
  end
end

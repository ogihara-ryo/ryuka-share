# == Schema Information
#
# Table name: messages
#
#  id           :integer          not null, primary key
#  from_user_id :integer
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  def setup
    @message = Message.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @message, :id
    assert_respond_to @message, :from
    assert_respond_to @message, :from_user_id
    assert_respond_to @message, :to
    assert_respond_to @message, :title
    assert_respond_to @message, :created_at
    assert_respond_to @message, :updated_at
  end
end

# == Schema Information
#
# Table name: messages_relations
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  message_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MessagesRelationTest < ActiveSupport::TestCase
  def setup
    @messages_relation = MessagesRelation.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @messages_relation, :id
    assert_respond_to @messages_relation, :user_id
    assert_respond_to @messages_relation, :message_id
    assert_respond_to @messages_relation, :created_at
    assert_respond_to @messages_relation, :updated_at
    assert_respond_to @messages_relation, :user
    assert_respond_to @messages_relation, :message
  end
end

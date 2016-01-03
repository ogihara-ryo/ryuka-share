# == Schema Information
#
# Table name: group_members_relations
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GroupMembersRelationTest < ActiveSupport::TestCase
  def setup
    @group_members_relation = GroupMembersRelation.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @group_members_relation, :id
    assert_respond_to @group_members_relation, :user_id
    assert_respond_to @group_members_relation, :user
    assert_respond_to @group_members_relation, :group_id
    assert_respond_to @group_members_relation, :group
    assert_respond_to @group_members_relation, :created_at
    assert_respond_to @group_members_relation, :updated_at
  end
end

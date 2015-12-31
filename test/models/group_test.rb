# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  def setup
    @group = Group.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @group, :id
    assert_respond_to @group, :name
    assert_respond_to @group, :created_at
    assert_respond_to @group, :updated_at
    assert_respond_to @group, :users
  end
end

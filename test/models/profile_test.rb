# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  last_name  :string
#  first_name :string
#  email      :string
#  telephone  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  def setup
    @profile = Profile.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @profile, :id
    assert_respond_to @profile, :user_id
    assert_respond_to @profile, :last_name
    assert_respond_to @profile, :first_name
    assert_respond_to @profile, :email
    assert_respond_to @profile, :telephone
    assert_respond_to @profile, :created_at
    assert_respond_to @profile, :updated_at
    assert_respond_to @profile, :user
  end
end

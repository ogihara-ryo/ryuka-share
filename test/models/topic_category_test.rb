# == Schema Information
#
# Table name: topic_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TopicCategoryTest < ActiveSupport::TestCase
  def setup
    @topic_category = TopicCategory.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @topic_category, :id
    assert_respond_to @topic_category, :name
    assert_respond_to @topic_category, :topics
    assert_respond_to @topic_category, :created_at
    assert_respond_to @topic_category, :updated_at
  end
end

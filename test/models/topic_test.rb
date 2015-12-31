# == Schema Information
#
# Table name: topics
#
#  id          :integer          not null, primary key
#  author_id   :integer
#  category_id :integer
#  title       :string
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class TopicTest < ActiveSupport::TestCase
  def setup
    @topic = Topic.new
  end

  test '各メンバーに応答すること' do
    assert_respond_to @topic, :id
    assert_respond_to @topic, :author
    assert_respond_to @topic, :category
    assert_respond_to @topic, :category_id
    assert_respond_to @topic, :title
    assert_respond_to @topic, :content
    assert_respond_to @topic, :created_at
    assert_respond_to @topic, :updated_at
  end
end

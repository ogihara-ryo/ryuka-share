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

class TopicsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:admin)
    @topic = topics(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:topics)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create topic' do
    assert_difference('Topic.count') do
      post :create, topic: { author_id: @topic.author_id, category_id: @topic.category_id,
                             content: @topic.content, title: @topic.title }
    end

    assert_redirected_to topic_path(assigns(:topic))
  end

  test 'should show topic' do
    get :show, id: @topic
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @topic
    assert_response :success
  end

  test 'should update topic' do
    patch :update, id: @topic, topic: { author_id: @topic.author_id, category_id: @topic.category_id,
                                        content: @topic.content, title: @topic.title }
    assert_redirected_to topic_path(assigns(:topic))
  end

  test 'should destroy topic' do
    assert_difference('Topic.count', -1) do
      delete :destroy, id: @topic
    end

    assert_redirected_to topics_path
  end
end

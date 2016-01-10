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

class TopicCategoriesControllerTest < ActionController::TestCase
  setup do
    sign_in users(:admin)
    @topic_category = topic_categories(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:topic_categories)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create topic_category' do
    assert_difference('TopicCategory.count') do
      post :create, topic_category: { name: @topic_category.name }
    end

    assert_redirected_to topic_category_path(assigns(:topic_category))
  end

  test 'should show topic_category' do
    get :show, id: @topic_category
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @topic_category
    assert_response :success
  end

  test 'should update topic_category' do
    patch :update, id: @topic_category, topic_category: { name: @topic_category.name }
    assert_redirected_to topic_category_path(assigns(:topic_category))
  end

  test 'should destroy topic_category' do
    assert_difference('TopicCategory.count', -1) do
      delete :destroy, id: @topic_category
    end

    assert_redirected_to topic_categories_path
  end
end

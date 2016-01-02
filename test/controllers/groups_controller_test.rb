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

class GroupsControllerTest < ActionController::TestCase
  setup do
    @group = groups(:one)
  end

  test '#index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups)
  end

  test '#new' do
    get :new
    assert_response :success
  end

  test '#create' do
    assert_difference('Group.count') do
      post :create, group: { email: @group.name }
    end

    assert_redirected_to group_path(assigns(:group))
  end

  test '#show' do
    get :show, id: @group
    assert_response :success
  end

  test '#edit' do
    get :edit, id: @group
    assert_response :success
  end

  test '#update' do
    patch :update, id: @group, group: { name: @group.name }
    assert_redirected_to group_path(assigns(:group))
  end

  test '#destroy' do
    assert_difference('Group.count', -1) do
      delete :destroy, id: @group
    end

    assert_redirected_to groups_path
  end
end

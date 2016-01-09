# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  signin_id  :string           not null
#  password   :string           not null
#  admin      :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test 'index ページへ正常にアクセスできること' do
    get :index
    assert_response :success
    assert_template :index
  end

  test 'show ページへ正常にアクセスできること' do
    @user = users(:one)
    get :show, id: @user.id
    assert_response :success
    assert_template :show
  end

  test 'new ページへ正常にアクセスできること' do
    get :new
    assert_response :success
    assert_template :new
  end

  test '正常にユーザーを追加できること' do
    assert_difference('User.count') do
      post :create, user: { signin_id: @user.signin_id, password: @user.password, admin: @user.admin }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test 'edit ページへ正常にアクセスできること' do
    get :edit, id: @user
    assert_response :success
    assert_template :edit
  end

  test 'ユーザーが正常に更新されること' do
    patch :update, id: @user, user: {
      signin_id: 'test_signin_id',
      password: 'test_password',
    }
    assert_redirected_to user_path(assigns(:user))
    @user.reload
    assert_equal @user.signin_id, 'test_signin_id'
    assert_equal @user.password, 'test_password'
  end
end


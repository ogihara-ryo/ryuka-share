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

  test 'create ページへ正常にアクセスできること' do
    assert_difference('User.count') do
      post :create, user: { signin_id: @user.signin_id, password: @user.password, admin: @user.admin }
    end

    assert_redirected_to user_path(assigns(:user))
  end
end

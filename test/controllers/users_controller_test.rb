require 'test_helper'

class UsersControllerTest < ActionController::TestCase
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
end

require 'test_helper'

class TopControllerTest < ActionController::TestCase
  test 'index ページへ正常にアクセスできること' do
    get :index
    assert_response :success
    assert_template :index
  end
end
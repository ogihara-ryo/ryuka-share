require 'test_helper'

class TopControllerTest < ActionController::TestCase
  test 'index ページへ正常にアクセスできること' do
    get :index
    assert_response :success
    assert_template :index
    assert_template :_head
    assert_template :_header
  end
end

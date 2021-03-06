require 'test_helper'

class TopControllerTest < ActionController::TestCase
  def setup
    sign_in users(:admin)
  end

  test 'index ページへ正常にアクセスできること' do
    get :index
    assert_response :success
    assert_template :index
    assert_template :_head
    assert_template :_header
    assert_template :_footer
  end
end

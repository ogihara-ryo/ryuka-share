require 'test_helper'

class ApplicationHelperTest < ActionController::TestCase
  test '#page_title' do
    assert_equal(page_title(nil), RyukaShare::Application.config.title)
    assert_equal(page_title('page_title'), "page_title | #{RyukaShare::Application.config.title}")
  end
end

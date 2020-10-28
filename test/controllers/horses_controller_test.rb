require 'test_helper'

class HorsesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get horses_show_url
    assert_response :success
  end

  test "should get search" do
    get horses_search_url
    assert_response :success
  end

end

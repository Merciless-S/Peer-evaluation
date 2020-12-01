require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get getAdmin" do
    get admin_getAdmin_url
    assert_response :success
  end

  test "should get postAdmin" do
    get admin_postAdmin_url
    assert_response :success
  end

end

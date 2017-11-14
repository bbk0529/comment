require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get user_signup_url
    assert_response :success
  end

  test "should get signup_process" do
    get user_signup_process_url
    assert_response :success
  end

  test "should get login" do
    get user_login_url
    assert_response :success
  end

  test "should get show" do
    get user_show_url
    assert_response :success
  end

end

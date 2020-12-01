require 'test_helper'

class StudentControllerTest < ActionDispatch::IntegrationTest
  test "should get postStudent" do
    get student_postStudent_url
    assert_response :success
  end

  test "should get deleteStudent" do
    get student_deleteStudent_url
    assert_response :success
  end

  test "should get getByGroupnum" do
    get student_getByGroupnum_url
    assert_response :success
  end

  test "should get getByBuckid" do
    get student_getByBuckid_url
    assert_response :success
  end

end

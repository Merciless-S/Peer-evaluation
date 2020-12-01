require 'test_helper'

class ScoreControllerTest < ActionDispatch::IntegrationTest
  test "should get postScore" do
    get score_postScore_url
    assert_response :success
  end

  test "should get getByGrader" do
    get score_getByGrader_url
    assert_response :success
  end

  test "should get getByTeammate" do
    get score_getByTeammate_url
    assert_response :success
  end

end

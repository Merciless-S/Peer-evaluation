require 'test_helper'

class TeamControllerTest < ActionDispatch::IntegrationTest
  test "should get getAllTeams" do
    get team_getAllTeams_url
    assert_response :success
  end

end

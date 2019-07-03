require 'test_helper'

class Users::TimelineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_timeline_index_url
    assert_response :success
  end

end

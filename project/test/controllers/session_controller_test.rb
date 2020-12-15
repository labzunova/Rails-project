require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get session_new_url
    assert_response :success
  end

  test "can't go to profile without auth" do
    get main_profile_url
    assert_redirected_to session_new_url
  end
end

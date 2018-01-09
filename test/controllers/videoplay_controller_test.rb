require 'test_helper'

class VideoplayControllerTest < ActionDispatch::IntegrationTest
  test "should get video" do
    get videoplay_video_url
    assert_response :success
  end

end

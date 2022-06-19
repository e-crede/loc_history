require "test_helper"

class GpsLoggerControllerTest < ActionDispatch::IntegrationTest
  test "should get upload" do
    get gps_logger_upload_url
    assert_response :success
  end
end

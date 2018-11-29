require 'test_helper'

class DriverControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get driver_show_url
    assert_response :success
  end

end

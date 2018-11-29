require 'test_helper'

class PassengerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get passenger_show_url
    assert_response :success
  end

end

require "test_helper"

class RestaurantAdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get delete" do
    get restaurant_admins_delete_url
    assert_response :success
  end
end

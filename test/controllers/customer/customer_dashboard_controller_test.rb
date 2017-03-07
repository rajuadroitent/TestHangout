require 'test_helper'

class Customer::CustomerDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_customer_dashboard_index_url
    assert_response :success
  end

end

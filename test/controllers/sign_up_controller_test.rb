require 'test_helper'

class SignUpControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sign_up_create_url
    assert_response :success
  end

end

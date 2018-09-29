require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::TestHelpers
  test "should get index" do
    get home_index_url
    assert_response :success
  end

end

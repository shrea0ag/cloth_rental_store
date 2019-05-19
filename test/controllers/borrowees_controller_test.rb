require 'test_helper'

class BorroweesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get borrowees_index_url
    assert_response :success
  end

end

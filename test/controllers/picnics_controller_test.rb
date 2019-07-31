require 'test_helper'

class PicnicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get picnics_index_url
    assert_response :success
  end

end

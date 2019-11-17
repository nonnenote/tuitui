require 'test_helper'

class TuisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tuis_index_url
    assert_response :success
  end

end

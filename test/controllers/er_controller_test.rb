require "test_helper"

class ErControllerTest < ActionDispatch::IntegrationTest
  test "should get movies" do
    get er_movies_url
    assert_response :success
  end
end

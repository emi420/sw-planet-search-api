require "test_helper"

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get planets_search_url
    assert_response :success
  end
end

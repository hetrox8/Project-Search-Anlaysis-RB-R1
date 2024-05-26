require "test_helper"

class SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get searches_welcome_url
    assert_response :success
  end

  test "should get search" do
    get searches_search_url
    assert_response :success
  end

  test "should get dashboard" do
    get searches_dashboard_url
    assert_response :success
  end

  test "should get trends" do
    get searches_trends_url
    assert_response :success
  end

  test "should get reset" do
    get searches_reset_url
    assert_response :success
  end
end

require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get events_create_url
    assert_response :success
  end

  test "should get show" do
    get events_show_url
    assert_response :success
  end

  test "should get update" do
    get events_update_url
    assert_response :success
  end

  test "should get destroy" do
    get events_destroy_url
    assert_response :success
  end

end

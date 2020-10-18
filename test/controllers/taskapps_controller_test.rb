require 'test_helper'

class TaskappsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get taskapps_index_url
    assert_response :success
  end

  test "should get show" do
    get taskapps_show_url
    assert_response :success
  end

  test "should get new" do
    get taskapps_new_url
    assert_response :success
  end

  test "should get edit" do
    get taskapps_edit_url
    assert_response :success
  end

end

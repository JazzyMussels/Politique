require 'test_helper'

class ScandalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scandals_index_url
    assert_response :success
  end

  test "should get new" do
    get scandals_new_url
    assert_response :success
  end

  test "should get show" do
    get scandals_show_url
    assert_response :success
  end

  test "should get edit" do
    get scandals_edit_url
    assert_response :success
  end

end

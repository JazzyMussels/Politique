require 'test_helper'

class DebatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get debates_index_url
    assert_response :success
  end

  test "should get new" do
    get debates_new_url
    assert_response :success
  end

  test "should get show" do
    get debates_show_url
    assert_response :success
  end

  test "should get edit" do
    get debates_edit_url
    assert_response :success
  end

end

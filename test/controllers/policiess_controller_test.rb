require 'test_helper'

class PoliciessControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get policiess_index_url
    assert_response :success
  end

  test "should get new" do
    get policiess_new_url
    assert_response :success
  end

  test "should get show" do
    get policiess_show_url
    assert_response :success
  end

  test "should get edit" do
    get policiess_edit_url
    assert_response :success
  end

end

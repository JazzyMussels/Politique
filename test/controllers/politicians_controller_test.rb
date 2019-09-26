require 'test_helper'

class PoliticiansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get politicians_index_url
    assert_response :success
  end

  test "should get new" do
    get politicians_new_url
    assert_response :success
  end

  test "should get show" do
    get politicians_show_url
    assert_response :success
  end

  test "should get edit" do
    get politicians_edit_url
    assert_response :success
  end

end

require 'test_helper'

class ThingControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get thing_new_url
    assert_response :success
  end

  test "should get edit" do
    get thing_edit_url
    assert_response :success
  end

  test "should get index" do
    get thing_index_url
    assert_response :success
  end

  test "should get show" do
    get thing_show_url
    assert_response :success
  end

end

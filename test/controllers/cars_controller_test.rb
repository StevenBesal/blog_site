require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cars_new_url
    assert_response :success
  end

  test "should get edit" do
    get cars_edit_url
    assert_response :success
  end

  test "should get id" do
    get cars_id_url
    assert_response :success
  end

end

require 'test_helper'

class RoversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rover = rovers(:one)
  end

  test "should get index" do
    get rovers_url
    assert_response :success
  end

  test "should get new" do
    get new_rover_url
    assert_response :success
  end

  test "should create rover" do
    assert_difference('Rover.count') do
      post rovers_url, params: { rover: {  } }
    end

    assert_redirected_to rover_url(Rover.last)
  end

  test "should show rover" do
    get rover_url(@rover)
    assert_response :success
  end

  test "should get edit" do
    get edit_rover_url(@rover)
    assert_response :success
  end

  test "should update rover" do
    patch rover_url(@rover), params: { rover: {  } }
    assert_redirected_to rover_url(@rover)
  end

  test "should destroy rover" do
    assert_difference('Rover.count', -1) do
      delete rover_url(@rover)
    end

    assert_redirected_to rovers_url
  end
end

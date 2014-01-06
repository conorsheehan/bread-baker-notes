require 'test_helper'

class BreadsControllerTest < ActionController::TestCase
  setup do
    @bread = breads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:breads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bread" do
    assert_difference('Bread.count') do
      post :create, bread: { date: @bread.date, name: @bread.name, preferment: @bread.preferment, rating: @bread.rating, room_temp: @bread.room_temp, water_temp: @bread.water_temp }
    end

    assert_redirected_to bread_path(assigns(:bread))
  end

  test "should show bread" do
    get :show, id: @bread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bread
    assert_response :success
  end

  test "should update bread" do
    patch :update, id: @bread, bread: { date: @bread.date, name: @bread.name, preferment: @bread.preferment, rating: @bread.rating, room_temp: @bread.room_temp, water_temp: @bread.water_temp }
    assert_redirected_to bread_path(assigns(:bread))
  end

  test "should destroy bread" do
    assert_difference('Bread.count', -1) do
      delete :destroy, id: @bread
    end

    assert_redirected_to breads_path
  end
end

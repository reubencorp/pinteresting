require 'test_helper'

class BarksControllerTest < ActionController::TestCase
  setup do
    @bark = barks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bark" do
    assert_difference('Bark.count') do
      post :create, bark: { dog: @bark.dog, full_name: @bark.full_name }
    end

    assert_redirected_to bark_path(assigns(:bark))
  end

  test "should show bark" do
    get :show, id: @bark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bark
    assert_response :success
  end

  test "should update bark" do
    patch :update, id: @bark, bark: { dog: @bark.dog, full_name: @bark.full_name }
    assert_redirected_to bark_path(assigns(:bark))
  end

  test "should destroy bark" do
    assert_difference('Bark.count', -1) do
      delete :destroy, id: @bark
    end

    assert_redirected_to barks_path
  end
end

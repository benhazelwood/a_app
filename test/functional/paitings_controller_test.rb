require 'test_helper'

class PaitingsControllerTest < ActionController::TestCase
  setup do
    @paiting = paitings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paitings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paiting" do
    assert_difference('Paiting.count') do
      post :create, :paiting => @paiting.attributes
    end

    assert_redirected_to paiting_path(assigns(:paiting))
  end

  test "should show paiting" do
    get :show, :id => @paiting.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @paiting.to_param
    assert_response :success
  end

  test "should update paiting" do
    put :update, :id => @paiting.to_param, :paiting => @paiting.attributes
    assert_redirected_to paiting_path(assigns(:paiting))
  end

  test "should destroy paiting" do
    assert_difference('Paiting.count', -1) do
      delete :destroy, :id => @paiting.to_param
    end

    assert_redirected_to paitings_path
  end
end

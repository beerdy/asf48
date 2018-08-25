require 'test_helper'

class EvakuatorsControllerTest < ActionController::TestCase
  setup do
    @evakuator = evakuators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evakuators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evakuator" do
    assert_difference('Evakuator.count') do
      post :create, evakuator: { description: @evakuator.description, title: @evakuator.title }
    end

    assert_redirected_to evakuator_path(assigns(:evakuator))
  end

  test "should show evakuator" do
    get :show, id: @evakuator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evakuator
    assert_response :success
  end

  test "should update evakuator" do
    patch :update, id: @evakuator, evakuator: { description: @evakuator.description, title: @evakuator.title }
    assert_redirected_to evakuator_path(assigns(:evakuator))
  end

  test "should destroy evakuator" do
    assert_difference('Evakuator.count', -1) do
      delete :destroy, id: @evakuator
    end

    assert_redirected_to evakuators_path
  end
end

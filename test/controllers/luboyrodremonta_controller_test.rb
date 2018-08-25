require 'test_helper'

class LuboyrodremontaControllerTest < ActionController::TestCase
  setup do
    @luboyrodremontum = luboyrodremonta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:luboyrodremonta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create luboyrodremontum" do
    assert_difference('Luboyrodremontum.count') do
      post :create, luboyrodremontum: { description: @luboyrodremontum.description, title: @luboyrodremontum.title }
    end

    assert_redirected_to luboyrodremontum_path(assigns(:luboyrodremontum))
  end

  test "should show luboyrodremontum" do
    get :show, id: @luboyrodremontum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @luboyrodremontum
    assert_response :success
  end

  test "should update luboyrodremontum" do
    patch :update, id: @luboyrodremontum, luboyrodremontum: { description: @luboyrodremontum.description, title: @luboyrodremontum.title }
    assert_redirected_to luboyrodremontum_path(assigns(:luboyrodremontum))
  end

  test "should destroy luboyrodremontum" do
    assert_difference('Luboyrodremontum.count', -1) do
      delete :destroy, id: @luboyrodremontum
    end

    assert_redirected_to luboyrodremonta_path
  end
end

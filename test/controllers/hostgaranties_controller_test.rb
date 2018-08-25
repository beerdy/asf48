require 'test_helper'

class HostgarantiesControllerTest < ActionController::TestCase
  setup do
    @hostgaranty = hostgaranties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostgaranties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostgaranty" do
    assert_difference('Hostgarantie.count') do
      post :create, hostgaranty: { description: @hostgaranty.description, title: @hostgaranty.title }
    end

    assert_redirected_to hostgaranty_path(assigns(:hostgaranty))
  end

  test "should show hostgaranty" do
    get :show, id: @hostgaranty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostgaranty
    assert_response :success
  end

  test "should update hostgaranty" do
    patch :update, id: @hostgaranty, hostgaranty: { description: @hostgaranty.description, title: @hostgaranty.title }
    assert_redirected_to hostgaranty_path(assigns(:hostgaranty))
  end

  test "should destroy hostgaranty" do
    assert_difference('Hostgarantie.count', -1) do
      delete :destroy, id: @hostgaranty
    end

    assert_redirected_to hostgaranties_path
  end
end

require 'test_helper'

class HostpodzamenusControllerTest < ActionController::TestCase
  setup do
    @hostpodzamenu = hostpodzamenus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostpodzamenus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostpodzamenu" do
    assert_difference('Hostpodzamenu.count') do
      post :create, hostpodzamenu: { description: @hostpodzamenu.description, title: @hostpodzamenu.title }
    end

    assert_redirected_to hostpodzamenu_path(assigns(:hostpodzamenu))
  end

  test "should show hostpodzamenu" do
    get :show, id: @hostpodzamenu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostpodzamenu
    assert_response :success
  end

  test "should update hostpodzamenu" do
    patch :update, id: @hostpodzamenu, hostpodzamenu: { description: @hostpodzamenu.description, title: @hostpodzamenu.title }
    assert_redirected_to hostpodzamenu_path(assigns(:hostpodzamenu))
  end

  test "should destroy hostpodzamenu" do
    assert_difference('Hostpodzamenu.count', -1) do
      delete :destroy, id: @hostpodzamenu
    end

    assert_redirected_to hostpodzamenus_path
  end
end

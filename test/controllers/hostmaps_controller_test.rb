require 'test_helper'

class HostmapsControllerTest < ActionController::TestCase
  setup do
    @hostmap = hostmaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostmaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostmap" do
    assert_difference('Hostmap.count') do
      post :create, hostmap: { description: @hostmap.description, title: @hostmap.title }
    end

    assert_redirected_to hostmap_path(assigns(:hostmap))
  end

  test "should show hostmap" do
    get :show, id: @hostmap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostmap
    assert_response :success
  end

  test "should update hostmap" do
    patch :update, id: @hostmap, hostmap: { description: @hostmap.description, title: @hostmap.title }
    assert_redirected_to hostmap_path(assigns(:hostmap))
  end

  test "should destroy hostmap" do
    assert_difference('Hostmap.count', -1) do
      delete :destroy, id: @hostmap
    end

    assert_redirected_to hostmaps_path
  end
end

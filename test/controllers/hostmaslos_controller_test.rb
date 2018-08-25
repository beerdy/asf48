require 'test_helper'

class HostmaslosControllerTest < ActionController::TestCase
  setup do
    @hostmaslo = hostmaslos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostmaslos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostmaslo" do
    assert_difference('Hostmaslo.count') do
      post :create, hostmaslo: { description: @hostmaslo.description, title: @hostmaslo.title }
    end

    assert_redirected_to hostmaslo_path(assigns(:hostmaslo))
  end

  test "should show hostmaslo" do
    get :show, id: @hostmaslo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostmaslo
    assert_response :success
  end

  test "should update hostmaslo" do
    patch :update, id: @hostmaslo, hostmaslo: { description: @hostmaslo.description, title: @hostmaslo.title }
    assert_redirected_to hostmaslo_path(assigns(:hostmaslo))
  end

  test "should destroy hostmaslo" do
    assert_difference('Hostmaslo.count', -1) do
      delete :destroy, id: @hostmaslo
    end

    assert_redirected_to hostmaslos_path
  end
end

require 'test_helper'

class ZamenamaslosControllerTest < ActionController::TestCase
  setup do
    @zamenamaslo = zamenamaslos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zamenamaslos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zamenamaslo" do
    assert_difference('Zamenamaslo.count') do
      post :create, zamenamaslo: { description: @zamenamaslo.description, title: @zamenamaslo.title }
    end

    assert_redirected_to zamenamaslo_path(assigns(:zamenamaslo))
  end

  test "should show zamenamaslo" do
    get :show, id: @zamenamaslo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zamenamaslo
    assert_response :success
  end

  test "should update zamenamaslo" do
    patch :update, id: @zamenamaslo, zamenamaslo: { description: @zamenamaslo.description, title: @zamenamaslo.title }
    assert_redirected_to zamenamaslo_path(assigns(:zamenamaslo))
  end

  test "should destroy zamenamaslo" do
    assert_difference('Zamenamaslo.count', -1) do
      delete :destroy, id: @zamenamaslo
    end

    assert_redirected_to zamenamaslos_path
  end
end

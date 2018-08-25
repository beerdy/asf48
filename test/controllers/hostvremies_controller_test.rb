require 'test_helper'

class HostvremiesControllerTest < ActionController::TestCase
  setup do
    @hostvremy = hostvremies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostvremies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostvremy" do
    assert_difference('Hostvremy.count') do
      post :create, hostvremy: { description: @hostvremy.description, title: @hostvremy.title }
    end

    assert_redirected_to hostvremy_path(assigns(:hostvremy))
  end

  test "should show hostvremy" do
    get :show, id: @hostvremy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostvremy
    assert_response :success
  end

  test "should update hostvremy" do
    patch :update, id: @hostvremy, hostvremy: { description: @hostvremy.description, title: @hostvremy.title }
    assert_redirected_to hostvremy_path(assigns(:hostvremy))
  end

  test "should destroy hostvremy" do
    assert_difference('Hostvremy.count', -1) do
      delete :destroy, id: @hostvremy
    end

    assert_redirected_to hostvremies_path
  end
end

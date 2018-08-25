require 'test_helper'

class HostmoykasControllerTest < ActionController::TestCase
  setup do
    @hostmoyka = hostmoykas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostmoykas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostmoyka" do
    assert_difference('Hostmoyka.count') do
      post :create, hostmoyka: { description: @hostmoyka.description, title: @hostmoyka.title }
    end

    assert_redirected_to hostmoyka_path(assigns(:hostmoyka))
  end

  test "should show hostmoyka" do
    get :show, id: @hostmoyka
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostmoyka
    assert_response :success
  end

  test "should update hostmoyka" do
    patch :update, id: @hostmoyka, hostmoyka: { description: @hostmoyka.description, title: @hostmoyka.title }
    assert_redirected_to hostmoyka_path(assigns(:hostmoyka))
  end

  test "should destroy hostmoyka" do
    assert_difference('Hostmoyka.count', -1) do
      delete :destroy, id: @hostmoyka
    end

    assert_redirected_to hostmoykas_path
  end
end

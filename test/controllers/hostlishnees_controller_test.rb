require 'test_helper'

class HostlishneesControllerTest < ActionController::TestCase
  setup do
    @hostlishnee = hostlishnees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostlishnees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostlishnee" do
    assert_difference('Hostlishnee.count') do
      post :create, hostlishnee: { description: @hostlishnee.description, title: @hostlishnee.title }
    end

    assert_redirected_to hostlishnee_path(assigns(:hostlishnee))
  end

  test "should show hostlishnee" do
    get :show, id: @hostlishnee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostlishnee
    assert_response :success
  end

  test "should update hostlishnee" do
    patch :update, id: @hostlishnee, hostlishnee: { description: @hostlishnee.description, title: @hostlishnee.title }
    assert_redirected_to hostlishnee_path(assigns(:hostlishnee))
  end

  test "should destroy hostlishnee" do
    assert_difference('Hostlishnee.count', -1) do
      delete :destroy, id: @hostlishnee
    end

    assert_redirected_to hostlishnees_path
  end
end

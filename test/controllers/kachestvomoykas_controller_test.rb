require 'test_helper'

class KachestvomoykasControllerTest < ActionController::TestCase
  setup do
    @kachestvomoyka = kachestvomoykas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kachestvomoykas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kachestvomoyka" do
    assert_difference('Kachestvomoyka.count') do
      post :create, kachestvomoyka: { description: @kachestvomoyka.description, title: @kachestvomoyka.title }
    end

    assert_redirected_to kachestvomoyka_path(assigns(:kachestvomoyka))
  end

  test "should show kachestvomoyka" do
    get :show, id: @kachestvomoyka
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kachestvomoyka
    assert_response :success
  end

  test "should update kachestvomoyka" do
    patch :update, id: @kachestvomoyka, kachestvomoyka: { description: @kachestvomoyka.description, title: @kachestvomoyka.title }
    assert_redirected_to kachestvomoyka_path(assigns(:kachestvomoyka))
  end

  test "should destroy kachestvomoyka" do
    assert_difference('Kachestvomoyka.count', -1) do
      delete :destroy, id: @kachestvomoyka
    end

    assert_redirected_to kachestvomoykas_path
  end
end

require 'test_helper'

class BanersControllerTest < ActionController::TestCase
  setup do
    @baner = baners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baner" do
    assert_difference('Baner.count') do
      post :create, baner: {  }
    end

    assert_redirected_to baner_path(assigns(:baner))
  end

  test "should show baner" do
    get :show, id: @baner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baner
    assert_response :success
  end

  test "should update baner" do
    patch :update, id: @baner, baner: {  }
    assert_redirected_to baner_path(assigns(:baner))
  end

  test "should destroy baner" do
    assert_difference('Baner.count', -1) do
      delete :destroy, id: @baner
    end

    assert_redirected_to baners_path
  end
end

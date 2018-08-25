require 'test_helper'

class KapitalremontsControllerTest < ActionController::TestCase
  setup do
    @kapitalremont = kapitalremonts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kapitalremonts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kapitalremont" do
    assert_difference('Kapitalremont.count') do
      post :create, kapitalremont: { description: @kapitalremont.description, title: @kapitalremont.title }
    end

    assert_redirected_to kapitalremont_path(assigns(:kapitalremont))
  end

  test "should show kapitalremont" do
    get :show, id: @kapitalremont
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kapitalremont
    assert_response :success
  end

  test "should update kapitalremont" do
    patch :update, id: @kapitalremont, kapitalremont: { description: @kapitalremont.description, title: @kapitalremont.title }
    assert_redirected_to kapitalremont_path(assigns(:kapitalremont))
  end

  test "should destroy kapitalremont" do
    assert_difference('Kapitalremont.count', -1) do
      delete :destroy, id: @kapitalremont
    end

    assert_redirected_to kapitalremonts_path
  end
end

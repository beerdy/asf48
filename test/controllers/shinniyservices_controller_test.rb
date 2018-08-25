require 'test_helper'

class ShinniyservicesControllerTest < ActionController::TestCase
  setup do
    @shinniyservice = shinniyservices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shinniyservices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shinniyservice" do
    assert_difference('Shinniyservice.count') do
      post :create, shinniyservice: { description: @shinniyservice.description, title: @shinniyservice.title }
    end

    assert_redirected_to shinniyservice_path(assigns(:shinniyservice))
  end

  test "should show shinniyservice" do
    get :show, id: @shinniyservice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shinniyservice
    assert_response :success
  end

  test "should update shinniyservice" do
    patch :update, id: @shinniyservice, shinniyservice: { description: @shinniyservice.description, title: @shinniyservice.title }
    assert_redirected_to shinniyservice_path(assigns(:shinniyservice))
  end

  test "should destroy shinniyservice" do
    assert_difference('Shinniyservice.count', -1) do
      delete :destroy, id: @shinniyservice
    end

    assert_redirected_to shinniyservices_path
  end
end

require 'test_helper'

class CertkapitalsControllerTest < ActionController::TestCase
  setup do
    @certkapital = certkapitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certkapitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certkapital" do
    assert_difference('Certkapital.count') do
      post :create, certkapital: { description: @certkapital.description, title: @certkapital.title }
    end

    assert_redirected_to certkapital_path(assigns(:certkapital))
  end

  test "should show certkapital" do
    get :show, id: @certkapital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certkapital
    assert_response :success
  end

  test "should update certkapital" do
    patch :update, id: @certkapital, certkapital: { description: @certkapital.description, title: @certkapital.title }
    assert_redirected_to certkapital_path(assigns(:certkapital))
  end

  test "should destroy certkapital" do
    assert_difference('Certkapital.count', -1) do
      delete :destroy, id: @certkapital
    end

    assert_redirected_to certkapitals_path
  end
end

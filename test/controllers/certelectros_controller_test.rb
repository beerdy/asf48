require 'test_helper'

class CertelectrosControllerTest < ActionController::TestCase
  setup do
    @certelectro = certelectros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certelectros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certelectro" do
    assert_difference('Certelectro.count') do
      post :create, certelectro: { description: @certelectro.description, title: @certelectro.title }
    end

    assert_redirected_to certelectro_path(assigns(:certelectro))
  end

  test "should show certelectro" do
    get :show, id: @certelectro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certelectro
    assert_response :success
  end

  test "should update certelectro" do
    patch :update, id: @certelectro, certelectro: { description: @certelectro.description, title: @certelectro.title }
    assert_redirected_to certelectro_path(assigns(:certelectro))
  end

  test "should destroy certelectro" do
    assert_difference('Certelectro.count', -1) do
      delete :destroy, id: @certelectro
    end

    assert_redirected_to certelectros_path
  end
end

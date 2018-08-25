require 'test_helper'

class CertobsluzhisControllerTest < ActionController::TestCase
  setup do
    @certobsluzhi = certobsluzhis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certobsluzhis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certobsluzhi" do
    assert_difference('Certobsluzhi.count') do
      post :create, certobsluzhi: { description: @certobsluzhi.description, title: @certobsluzhi.title }
    end

    assert_redirected_to certobsluzhi_path(assigns(:certobsluzhi))
  end

  test "should show certobsluzhi" do
    get :show, id: @certobsluzhi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certobsluzhi
    assert_response :success
  end

  test "should update certobsluzhi" do
    patch :update, id: @certobsluzhi, certobsluzhi: { description: @certobsluzhi.description, title: @certobsluzhi.title }
    assert_redirected_to certobsluzhi_path(assigns(:certobsluzhi))
  end

  test "should destroy certobsluzhi" do
    assert_difference('Certobsluzhi.count', -1) do
      delete :destroy, id: @certobsluzhi
    end

    assert_redirected_to certobsluzhis_path
  end
end

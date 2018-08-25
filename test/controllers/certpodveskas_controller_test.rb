require 'test_helper'

class CertpodveskasControllerTest < ActionController::TestCase
  setup do
    @certpodveska = certpodveskas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certpodveskas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certpodveska" do
    assert_difference('Certpodveska.count') do
      post :create, certpodveska: { description: @certpodveska.description, title: @certpodveska.title }
    end

    assert_redirected_to certpodveska_path(assigns(:certpodveska))
  end

  test "should show certpodveska" do
    get :show, id: @certpodveska
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certpodveska
    assert_response :success
  end

  test "should update certpodveska" do
    patch :update, id: @certpodveska, certpodveska: { description: @certpodveska.description, title: @certpodveska.title }
    assert_redirected_to certpodveska_path(assigns(:certpodveska))
  end

  test "should destroy certpodveska" do
    assert_difference('Certpodveska.count', -1) do
      delete :destroy, id: @certpodveska
    end

    assert_redirected_to certpodveskas_path
  end
end

require 'test_helper'

class AkciisControllerTest < ActionController::TestCase
  setup do
    @akcii = akciis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:akciis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create akcii" do
    assert_difference('Akcii.count') do
      post :create, akcii: { description: @akcii.description, image_uid: @akcii.image_uid, title: @akcii.title }
    end

    assert_redirected_to akcii_path(assigns(:akcii))
  end

  test "should show akcii" do
    get :show, id: @akcii
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @akcii
    assert_response :success
  end

  test "should update akcii" do
    patch :update, id: @akcii, akcii: { description: @akcii.description, image_uid: @akcii.image_uid, title: @akcii.title }
    assert_redirected_to akcii_path(assigns(:akcii))
  end

  test "should destroy akcii" do
    assert_difference('Akcii.count', -1) do
      delete :destroy, id: @akcii
    end

    assert_redirected_to akciis_path
  end
end

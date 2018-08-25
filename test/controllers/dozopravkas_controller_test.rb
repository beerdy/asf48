require 'test_helper'

class DozopravkasControllerTest < ActionController::TestCase
  setup do
    @dozopravka = dozopravkas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dozopravkas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dozopravka" do
    assert_difference('Dozopravka.count') do
      post :create, dozopravka: { description: @dozopravka.description, title: @dozopravka.title }
    end

    assert_redirected_to dozopravka_path(assigns(:dozopravka))
  end

  test "should show dozopravka" do
    get :show, id: @dozopravka
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dozopravka
    assert_response :success
  end

  test "should update dozopravka" do
    patch :update, id: @dozopravka, dozopravka: { description: @dozopravka.description, title: @dozopravka.title }
    assert_redirected_to dozopravka_path(assigns(:dozopravka))
  end

  test "should destroy dozopravka" do
    assert_difference('Dozopravka.count', -1) do
      delete :destroy, id: @dozopravka
    end

    assert_redirected_to dozopravkas_path
  end
end

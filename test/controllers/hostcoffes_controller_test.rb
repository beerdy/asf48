require 'test_helper'

class HostcoffesControllerTest < ActionController::TestCase
  setup do
    @hostcoffe = hostcoffes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostcoffes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostcoffe" do
    assert_difference('Hostcoffe.count') do
      post :create, hostcoffe: { description: @hostcoffe.description, title: @hostcoffe.title }
    end

    assert_redirected_to hostcoffe_path(assigns(:hostcoffe))
  end

  test "should show hostcoffe" do
    get :show, id: @hostcoffe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostcoffe
    assert_response :success
  end

  test "should update hostcoffe" do
    patch :update, id: @hostcoffe, hostcoffe: { description: @hostcoffe.description, title: @hostcoffe.title }
    assert_redirected_to hostcoffe_path(assigns(:hostcoffe))
  end

  test "should destroy hostcoffe" do
    assert_difference('Hostcoffe.count', -1) do
      delete :destroy, id: @hostcoffe
    end

    assert_redirected_to hostcoffes_path
  end
end

require 'test_helper'

class ObsluzhivaniesControllerTest < ActionController::TestCase
  setup do
    @obsluzhivany = obsluzhivanies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:obsluzhivanies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create obsluzhivany" do
    assert_difference('Obsluzhivanie.count') do
      post :create, obsluzhivany: { description: @obsluzhivany.description, title: @obsluzhivany.title }
    end

    assert_redirected_to obsluzhivany_path(assigns(:obsluzhivany))
  end

  test "should show obsluzhivany" do
    get :show, id: @obsluzhivany
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @obsluzhivany
    assert_response :success
  end

  test "should update obsluzhivany" do
    patch :update, id: @obsluzhivany, obsluzhivany: { description: @obsluzhivany.description, title: @obsluzhivany.title }
    assert_redirected_to obsluzhivany_path(assigns(:obsluzhivany))
  end

  test "should destroy obsluzhivany" do
    assert_difference('Obsluzhivanie.count', -1) do
      delete :destroy, id: @obsluzhivany
    end

    assert_redirected_to obsluzhivanies_path
  end
end

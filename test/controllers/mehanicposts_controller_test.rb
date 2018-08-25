require 'test_helper'

class MehanicpostsControllerTest < ActionController::TestCase
  setup do
    @mehanicpost = mehanicposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mehanicposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mehanicpost" do
    assert_difference('Mehanicpost.count') do
      post :create, mehanicpost: { description: @mehanicpost.description, image_url: @mehanicpost.image_url, title: @mehanicpost.title }
    end

    assert_redirected_to mehanicpost_path(assigns(:mehanicpost))
  end

  test "should show mehanicpost" do
    get :show, id: @mehanicpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mehanicpost
    assert_response :success
  end

  test "should update mehanicpost" do
    patch :update, id: @mehanicpost, mehanicpost: { description: @mehanicpost.description, image_url: @mehanicpost.image_url, title: @mehanicpost.title }
    assert_redirected_to mehanicpost_path(assigns(:mehanicpost))
  end

  test "should destroy mehanicpost" do
    assert_difference('Mehanicpost.count', -1) do
      delete :destroy, id: @mehanicpost
    end

    assert_redirected_to mehanicposts_path
  end
end

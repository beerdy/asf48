require 'test_helper'

class NotepostsControllerTest < ActionController::TestCase
  setup do
    @notepost = noteposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:noteposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notepost" do
    assert_difference('Notepost.count') do
      post :create, notepost: { description: @notepost.description, title: @notepost.title }
    end

    assert_redirected_to notepost_path(assigns(:notepost))
  end

  test "should show notepost" do
    get :show, id: @notepost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notepost
    assert_response :success
  end

  test "should update notepost" do
    patch :update, id: @notepost, notepost: { description: @notepost.description, title: @notepost.title }
    assert_redirected_to notepost_path(assigns(:notepost))
  end

  test "should destroy notepost" do
    assert_difference('Notepost.count', -1) do
      delete :destroy, id: @notepost
    end

    assert_redirected_to noteposts_path
  end
end

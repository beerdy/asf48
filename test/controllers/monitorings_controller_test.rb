require 'test_helper'

class MonitoringsControllerTest < ActionController::TestCase
  setup do
    @monitoring = monitorings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monitorings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monitoring" do
    assert_difference('Monitoring.count') do
      post :create, monitoring: { description: @monitoring.description, title: @monitoring.title }
    end

    assert_redirected_to monitoring_path(assigns(:monitoring))
  end

  test "should show monitoring" do
    get :show, id: @monitoring
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monitoring
    assert_response :success
  end

  test "should update monitoring" do
    patch :update, id: @monitoring, monitoring: { description: @monitoring.description, title: @monitoring.title }
    assert_redirected_to monitoring_path(assigns(:monitoring))
  end

  test "should destroy monitoring" do
    assert_difference('Monitoring.count', -1) do
      delete :destroy, id: @monitoring
    end

    assert_redirected_to monitorings_path
  end
end

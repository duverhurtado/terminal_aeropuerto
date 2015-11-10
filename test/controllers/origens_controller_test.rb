require 'test_helper'

class OrigensControllerTest < ActionController::TestCase
  setup do
    @origen = origens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:origens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create origen" do
    assert_difference('Origen.count') do
      post :create, origen: { ciudad: @origen.ciudad, n_aeropuerto: @origen.n_aeropuerto }
    end

    assert_redirected_to origen_path(assigns(:origen))
  end

  test "should show origen" do
    get :show, id: @origen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @origen
    assert_response :success
  end

  test "should update origen" do
    patch :update, id: @origen, origen: { ciudad: @origen.ciudad, n_aeropuerto: @origen.n_aeropuerto }
    assert_redirected_to origen_path(assigns(:origen))
  end

  test "should destroy origen" do
    assert_difference('Origen.count', -1) do
      delete :destroy, id: @origen
    end

    assert_redirected_to origens_path
  end
end

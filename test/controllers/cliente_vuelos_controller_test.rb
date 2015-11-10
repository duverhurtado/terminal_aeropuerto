require 'test_helper'

class ClienteVuelosControllerTest < ActionController::TestCase
  setup do
    @cliente_vuelo = cliente_vuelos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_vuelos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_vuelo" do
    assert_difference('ClienteVuelo.count') do
      post :create, cliente_vuelo: { cliente_id: @cliente_vuelo.cliente_id, vuelo_id: @cliente_vuelo.vuelo_id }
    end

    assert_redirected_to cliente_vuelo_path(assigns(:cliente_vuelo))
  end

  test "should show cliente_vuelo" do
    get :show, id: @cliente_vuelo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_vuelo
    assert_response :success
  end

  test "should update cliente_vuelo" do
    patch :update, id: @cliente_vuelo, cliente_vuelo: { cliente_id: @cliente_vuelo.cliente_id, vuelo_id: @cliente_vuelo.vuelo_id }
    assert_redirected_to cliente_vuelo_path(assigns(:cliente_vuelo))
  end

  test "should destroy cliente_vuelo" do
    assert_difference('ClienteVuelo.count', -1) do
      delete :destroy, id: @cliente_vuelo
    end

    assert_redirected_to cliente_vuelos_path
  end
end

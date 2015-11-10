require 'test_helper'

class PasajesControllerTest < ActionController::TestCase
  setup do
    @pasaje = pasajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pasajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pasaje" do
    assert_difference('Pasaje.count') do
      post :create, pasaje: { asiento: @pasaje.asiento, clase_id: @pasaje.clase_id, cliente_id: @pasaje.cliente_id, valor: @pasaje.valor, vuelo_id: @pasaje.vuelo_id }
    end

    assert_redirected_to pasaje_path(assigns(:pasaje))
  end

  test "should show pasaje" do
    get :show, id: @pasaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pasaje
    assert_response :success
  end

  test "should update pasaje" do
    patch :update, id: @pasaje, pasaje: { asiento: @pasaje.asiento, clase_id: @pasaje.clase_id, cliente_id: @pasaje.cliente_id, valor: @pasaje.valor, vuelo_id: @pasaje.vuelo_id }
    assert_redirected_to pasaje_path(assigns(:pasaje))
  end

  test "should destroy pasaje" do
    assert_difference('Pasaje.count', -1) do
      delete :destroy, id: @pasaje
    end

    assert_redirected_to pasajes_path
  end
end

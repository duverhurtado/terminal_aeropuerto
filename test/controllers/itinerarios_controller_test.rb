require 'test_helper'

class ItinerariosControllerTest < ActionController::TestCase
  setup do
    @itinerario = itinerarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:itinerarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create itinerario" do
    assert_difference('Itinerario.count') do
      post :create, itinerario: { codigo_it: @itinerario.codigo_it, destino_id: @itinerario.destino_id, fecha: @itinerario.fecha, hora: @itinerario.hora, origen_id: @itinerario.origen_id }
    end

    assert_redirected_to itinerario_path(assigns(:itinerario))
  end

  test "should show itinerario" do
    get :show, id: @itinerario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @itinerario
    assert_response :success
  end

  test "should update itinerario" do
    patch :update, id: @itinerario, itinerario: { codigo_it: @itinerario.codigo_it, destino_id: @itinerario.destino_id, fecha: @itinerario.fecha, hora: @itinerario.hora, origen_id: @itinerario.origen_id }
    assert_redirected_to itinerario_path(assigns(:itinerario))
  end

  test "should destroy itinerario" do
    assert_difference('Itinerario.count', -1) do
      delete :destroy, id: @itinerario
    end

    assert_redirected_to itinerarios_path
  end
end

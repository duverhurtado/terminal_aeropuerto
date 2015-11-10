require 'test_helper'

class AerolineasControllerTest < ActionController::TestCase
  setup do
    @aerolinea = aerolineas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aerolineas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aerolinea" do
    assert_difference('Aerolinea.count') do
      post :create, aerolinea: { direccion: @aerolinea.direccion, nombre: @aerolinea.nombre, telefono: @aerolinea.telefono }
    end

    assert_redirected_to aerolinea_path(assigns(:aerolinea))
  end

  test "should show aerolinea" do
    get :show, id: @aerolinea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aerolinea
    assert_response :success
  end

  test "should update aerolinea" do
    patch :update, id: @aerolinea, aerolinea: { direccion: @aerolinea.direccion, nombre: @aerolinea.nombre, telefono: @aerolinea.telefono }
    assert_redirected_to aerolinea_path(assigns(:aerolinea))
  end

  test "should destroy aerolinea" do
    assert_difference('Aerolinea.count', -1) do
      delete :destroy, id: @aerolinea
    end

    assert_redirected_to aerolineas_path
  end
end

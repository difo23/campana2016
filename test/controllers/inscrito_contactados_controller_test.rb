require 'test_helper'

class InscritoContactadosControllerTest < ActionController::TestCase
  setup do
    @inscrito_contactado = inscrito_contactados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inscrito_contactados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inscrito_contactado" do
    assert_difference('InscritoContactado.count') do
      post :create, inscrito_contactado: { cedula_inscrito: @inscrito_contactado.cedula_inscrito, celular_inscrito: @inscrito_contactado.celular_inscrito, codigo_mesa: @inscrito_contactado.codigo_mesa, edad_inscrito: @inscrito_contactado.edad_inscrito, nombre_inscrito: @inscrito_contactado.nombre_inscrito, sexo_inscrito: @inscrito_contactado.sexo_inscrito }
    end

    assert_redirected_to inscrito_contactado_path(assigns(:inscrito_contactado))
  end

  test "should show inscrito_contactado" do
    get :show, id: @inscrito_contactado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inscrito_contactado
    assert_response :success
  end

  test "should update inscrito_contactado" do
    patch :update, id: @inscrito_contactado, inscrito_contactado: { cedula_inscrito: @inscrito_contactado.cedula_inscrito, celular_inscrito: @inscrito_contactado.celular_inscrito, codigo_mesa: @inscrito_contactado.codigo_mesa, edad_inscrito: @inscrito_contactado.edad_inscrito, nombre_inscrito: @inscrito_contactado.nombre_inscrito, sexo_inscrito: @inscrito_contactado.sexo_inscrito }
    assert_redirected_to inscrito_contactado_path(assigns(:inscrito_contactado))
  end

  test "should destroy inscrito_contactado" do
    assert_difference('InscritoContactado.count', -1) do
      delete :destroy, id: @inscrito_contactado
    end

    assert_redirected_to inscrito_contactados_path
  end
end

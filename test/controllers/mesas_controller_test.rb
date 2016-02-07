require 'test_helper'

class MesasControllerTest < ActionController::TestCase
  setup do
    @mesa = mesas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mesas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mesa" do
    assert_difference('Mesa.count') do
      post :create, mesa: { String: @mesa.String, cedula_delegado: @mesa.cedula_delegado, cedula_encargado_mesa: @mesa.cedula_encargado_mesa, cedula_suplente: @mesa.cedula_suplente, celular_delegado: @mesa.celular_delegado, celular_encargado_mesa: @mesa.celular_encargado_mesa, celular_suplente: @mesa.celular_suplente, codigo_mesa: @mesa.codigo_mesa, email_delegado: @mesa.email_delegado, email_encargado_mesa: @mesa.email_encargado_mesa, email_suplente: @mesa.email_suplente, inscritos_anterio: @mesa.inscritos_anterio, nombre_delegado: @mesa.nombre_delegado, nombre_encargado_mesa: @mesa.nombre_encargado_mesa, nombre_suplente: @mesa.nombre_suplente, total_: @mesa.total_, total_inscritos: @mesa.total_inscritos, total_pld_anterior: @mesa.total_pld_anterior, total_prd_anterior: @mesa.total_prd_anterior, total_votos_emitidos_anterior: @mesa.total_votos_emitidos_anterior, total_votos_nulos_anterior: @mesa.total_votos_nulos_anterior, total_votos_observados_anterior: @mesa.total_votos_observados_anterior, total_votos_validos_anterior: @mesa.total_votos_validos_anterior }
    end

    assert_redirected_to mesa_path(assigns(:mesa))
  end

  test "should show mesa" do
    get :show, id: @mesa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mesa
    assert_response :success
  end

  test "should update mesa" do
    patch :update, id: @mesa, mesa: { String: @mesa.String, cedula_delegado: @mesa.cedula_delegado, cedula_encargado_mesa: @mesa.cedula_encargado_mesa, cedula_suplente: @mesa.cedula_suplente, celular_delegado: @mesa.celular_delegado, celular_encargado_mesa: @mesa.celular_encargado_mesa, celular_suplente: @mesa.celular_suplente, codigo_mesa: @mesa.codigo_mesa, email_delegado: @mesa.email_delegado, email_encargado_mesa: @mesa.email_encargado_mesa, email_suplente: @mesa.email_suplente, inscritos_anterio: @mesa.inscritos_anterio, nombre_delegado: @mesa.nombre_delegado, nombre_encargado_mesa: @mesa.nombre_encargado_mesa, nombre_suplente: @mesa.nombre_suplente, total_: @mesa.total_, total_inscritos: @mesa.total_inscritos, total_pld_anterior: @mesa.total_pld_anterior, total_prd_anterior: @mesa.total_prd_anterior, total_votos_emitidos_anterior: @mesa.total_votos_emitidos_anterior, total_votos_nulos_anterior: @mesa.total_votos_nulos_anterior, total_votos_observados_anterior: @mesa.total_votos_observados_anterior, total_votos_validos_anterior: @mesa.total_votos_validos_anterior }
    assert_redirected_to mesa_path(assigns(:mesa))
  end

  test "should destroy mesa" do
    assert_difference('Mesa.count', -1) do
      delete :destroy, id: @mesa
    end

    assert_redirected_to mesas_path
  end
end

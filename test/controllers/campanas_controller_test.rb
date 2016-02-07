require 'test_helper'

class CampanasControllerTest < ActionController::TestCase
  setup do
    @campana = campanas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campanas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campana" do
    assert_difference('Campana.count') do
      post :create, campana: { cedula_candidato: @campana.cedula_candidato, cedula_director_electoral: @campana.cedula_director_electoral, celular_candidato: @campana.celular_candidato, celular_director_electoral: @campana.celular_director_electoral, circuncripcion: @campana.circuncripcion, codigo_distrito_municipal: @campana.codigo_distrito_municipal, codigo_municipio: @campana.codigo_municipio, codigo_provincia: @campana.codigo_provincia, email_candidato: @campana.email_candidato, email_director_electoral: @campana.email_director_electoral, nombre_candidato: @campana.nombre_candidato, nombre_director_electoral: @campana.nombre_director_electoral, nombre_distrito_municipal: @campana.nombre_distrito_municipal, nombre_municipio: @campana.nombre_municipio, nombre_provincia: @campana.nombre_provincia, posicion_candidatura: @campana.posicion_candidatura, year: @campana.year }
    end

    assert_redirected_to campana_path(assigns(:campana))
  end

  test "should show campana" do
    get :show, id: @campana
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campana
    assert_response :success
  end

  test "should update campana" do
    patch :update, id: @campana, campana: { cedula_candidato: @campana.cedula_candidato, cedula_director_electoral: @campana.cedula_director_electoral, celular_candidato: @campana.celular_candidato, celular_director_electoral: @campana.celular_director_electoral, circuncripcion: @campana.circuncripcion, codigo_distrito_municipal: @campana.codigo_distrito_municipal, codigo_municipio: @campana.codigo_municipio, codigo_provincia: @campana.codigo_provincia, email_candidato: @campana.email_candidato, email_director_electoral: @campana.email_director_electoral, nombre_candidato: @campana.nombre_candidato, nombre_director_electoral: @campana.nombre_director_electoral, nombre_distrito_municipal: @campana.nombre_distrito_municipal, nombre_municipio: @campana.nombre_municipio, nombre_provincia: @campana.nombre_provincia, posicion_candidatura: @campana.posicion_candidatura, year: @campana.year }
    assert_redirected_to campana_path(assigns(:campana))
  end

  test "should destroy campana" do
    assert_difference('Campana.count', -1) do
      delete :destroy, id: @campana
    end

    assert_redirected_to campanas_path
  end
end

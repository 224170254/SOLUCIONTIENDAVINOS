require 'test_helper'

class FormatoventaControllerTest < ActionController::TestCase
  setup do
    @formatoventum = formatoventa(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formatoventa)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formatoventum" do
    assert_difference('Formatoventum.count') do
      post :create, formatoventum: { costoadicional: @formatoventum.costoadicional, descripcion: @formatoventum.descripcion, unidades: @formatoventum.unidades }
    end

    assert_redirected_to formatoventum_path(assigns(:formatoventum))
  end

  test "should show formatoventum" do
    get :show, id: @formatoventum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formatoventum
    assert_response :success
  end

  test "should update formatoventum" do
    put :update, id: @formatoventum, formatoventum: { costoadicional: @formatoventum.costoadicional, descripcion: @formatoventum.descripcion, unidades: @formatoventum.unidades }
    assert_redirected_to formatoventum_path(assigns(:formatoventum))
  end

  test "should destroy formatoventum" do
    assert_difference('Formatoventum.count', -1) do
      delete :destroy, id: @formatoventum
    end

    assert_redirected_to formatoventa_path
  end
end

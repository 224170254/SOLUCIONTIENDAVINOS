require 'test_helper'

class MixproductosControllerTest < ActionController::TestCase
  setup do
    @mixproducto = mixproductos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mixproductos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mixproducto" do
    assert_difference('Mixproducto.count') do
      post :create, mixproducto: { idbodega: @mixproducto.idbodega, idformato: @mixproducto.idformato, idformatoventa: @mixproducto.idformatoventa, idmaestro: @mixproducto.idmaestro, precio: @mixproducto.precio, stock: @mixproducto.stock }
    end

    assert_redirected_to mixproducto_path(assigns(:mixproducto))
  end

  test "should show mixproducto" do
    get :show, id: @mixproducto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mixproducto
    assert_response :success
  end

  test "should update mixproducto" do
    put :update, id: @mixproducto, mixproducto: { idbodega: @mixproducto.idbodega, idformato: @mixproducto.idformato, idformatoventa: @mixproducto.idformatoventa, idmaestro: @mixproducto.idmaestro, precio: @mixproducto.precio, stock: @mixproducto.stock }
    assert_redirected_to mixproducto_path(assigns(:mixproducto))
  end

  test "should destroy mixproducto" do
    assert_difference('Mixproducto.count', -1) do
      delete :destroy, id: @mixproducto
    end

    assert_redirected_to mixproductos_path
  end
end

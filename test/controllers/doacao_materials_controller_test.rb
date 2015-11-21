require 'test_helper'

class DoacaoMaterialsControllerTest < ActionController::TestCase
  setup do
    @doacao_material = doacao_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doacao_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doacao_material" do
    assert_difference('DoacaoMaterial.count') do
      post :create, doacao_material: { descricao: @doacao_material.descricao, instuicao_id: @doacao_material.instuicao_id, quantidade: @doacao_material.quantidade }
    end

    assert_redirected_to doacao_material_path(assigns(:doacao_material))
  end

  test "should show doacao_material" do
    get :show, id: @doacao_material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doacao_material
    assert_response :success
  end

  test "should update doacao_material" do
    patch :update, id: @doacao_material, doacao_material: { descricao: @doacao_material.descricao, instuicao_id: @doacao_material.instuicao_id, quantidade: @doacao_material.quantidade }
    assert_redirected_to doacao_material_path(assigns(:doacao_material))
  end

  test "should destroy doacao_material" do
    assert_difference('DoacaoMaterial.count', -1) do
      delete :destroy, id: @doacao_material
    end

    assert_redirected_to doacao_materials_path
  end
end

require 'test_helper'

class DoacaoCaptacaosControllerTest < ActionController::TestCase
  setup do
    @doacao_captacao = doacao_captacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doacao_captacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doacao_captacao" do
    assert_difference('DoacaoCaptacao.count') do
      post :create, doacao_captacao: { instuicao_id: @doacao_captacao.instuicao_id, meta: @doacao_captacao.meta, objetivo: @doacao_captacao.objetivo, titulo: @doacao_captacao.titulo }
    end

    assert_redirected_to doacao_captacao_path(assigns(:doacao_captacao))
  end

  test "should show doacao_captacao" do
    get :show, id: @doacao_captacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doacao_captacao
    assert_response :success
  end

  test "should update doacao_captacao" do
    patch :update, id: @doacao_captacao, doacao_captacao: { instuicao_id: @doacao_captacao.instuicao_id, meta: @doacao_captacao.meta, objetivo: @doacao_captacao.objetivo, titulo: @doacao_captacao.titulo }
    assert_redirected_to doacao_captacao_path(assigns(:doacao_captacao))
  end

  test "should destroy doacao_captacao" do
    assert_difference('DoacaoCaptacao.count', -1) do
      delete :destroy, id: @doacao_captacao
    end

    assert_redirected_to doacao_captacaos_path
  end
end

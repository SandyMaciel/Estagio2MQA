require 'test_helper'

class DoacaoFinanceirasControllerTest < ActionController::TestCase
  setup do
    @doacao_financeira = doacao_financeiras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doacao_financeiras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doacao_financeira" do
    assert_difference('DoacaoFinanceira.count') do
      post :create, doacao_financeira: { agencia: @doacao_financeira.agencia, banco: @doacao_financeira.banco, cnpj: @doacao_financeira.cnpj, conta: @doacao_financeira.conta, instuicao_id: @doacao_financeira.instuicao_id, nome: @doacao_financeira.nome, titular: @doacao_financeira.titular }
    end

    assert_redirected_to doacao_financeira_path(assigns(:doacao_financeira))
  end

  test "should show doacao_financeira" do
    get :show, id: @doacao_financeira
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doacao_financeira
    assert_response :success
  end

  test "should update doacao_financeira" do
    patch :update, id: @doacao_financeira, doacao_financeira: { agencia: @doacao_financeira.agencia, banco: @doacao_financeira.banco, cnpj: @doacao_financeira.cnpj, conta: @doacao_financeira.conta, instuicao_id: @doacao_financeira.instuicao_id, nome: @doacao_financeira.nome, titular: @doacao_financeira.titular }
    assert_redirected_to doacao_financeira_path(assigns(:doacao_financeira))
  end

  test "should destroy doacao_financeira" do
    assert_difference('DoacaoFinanceira.count', -1) do
      delete :destroy, id: @doacao_financeira
    end

    assert_redirected_to doacao_financeiras_path
  end
end

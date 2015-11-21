require 'test_helper'

class DoacaoIdeiaControllerTest < ActionController::TestCase
  setup do
    @doacao_ideium = doacao_ideia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doacao_ideia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doacao_ideium" do
    assert_difference('DoacaoIdeium.count') do
      post :create, doacao_ideium: { descricao: @doacao_ideium.descricao, finalidade: @doacao_ideium.finalidade, instuicao_id: @doacao_ideium.instuicao_id }
    end

    assert_redirected_to doacao_ideium_path(assigns(:doacao_ideium))
  end

  test "should show doacao_ideium" do
    get :show, id: @doacao_ideium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doacao_ideium
    assert_response :success
  end

  test "should update doacao_ideium" do
    patch :update, id: @doacao_ideium, doacao_ideium: { descricao: @doacao_ideium.descricao, finalidade: @doacao_ideium.finalidade, instuicao_id: @doacao_ideium.instuicao_id }
    assert_redirected_to doacao_ideium_path(assigns(:doacao_ideium))
  end

  test "should destroy doacao_ideium" do
    assert_difference('DoacaoIdeium.count', -1) do
      delete :destroy, id: @doacao_ideium
    end

    assert_redirected_to doacao_ideia_path
  end
end

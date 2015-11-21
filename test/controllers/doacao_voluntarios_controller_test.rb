require 'test_helper'

class DoacaoVoluntariosControllerTest < ActionController::TestCase
  setup do
    @doacao_voluntario = doacao_voluntarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doacao_voluntarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doacao_voluntario" do
    assert_difference('DoacaoVoluntario.count') do
      post :create, doacao_voluntario: { descricao: @doacao_voluntario.descricao, domingo: @doacao_voluntario.domingo, funcao: @doacao_voluntario.funcao, horario_final: @doacao_voluntario.horario_final, horario_inicial: @doacao_voluntario.horario_inicial, instuicao_id: @doacao_voluntario.instuicao_id, quarta: @doacao_voluntario.quarta, quinta: @doacao_voluntario.quinta, sabado: @doacao_voluntario.sabado, segunda: @doacao_voluntario.segunda, sexta: @doacao_voluntario.sexta, terca: @doacao_voluntario.terca }
    end

    assert_redirected_to doacao_voluntario_path(assigns(:doacao_voluntario))
  end

  test "should show doacao_voluntario" do
    get :show, id: @doacao_voluntario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doacao_voluntario
    assert_response :success
  end

  test "should update doacao_voluntario" do
    patch :update, id: @doacao_voluntario, doacao_voluntario: { descricao: @doacao_voluntario.descricao, domingo: @doacao_voluntario.domingo, funcao: @doacao_voluntario.funcao, horario_final: @doacao_voluntario.horario_final, horario_inicial: @doacao_voluntario.horario_inicial, instuicao_id: @doacao_voluntario.instuicao_id, quarta: @doacao_voluntario.quarta, quinta: @doacao_voluntario.quinta, sabado: @doacao_voluntario.sabado, segunda: @doacao_voluntario.segunda, sexta: @doacao_voluntario.sexta, terca: @doacao_voluntario.terca }
    assert_redirected_to doacao_voluntario_path(assigns(:doacao_voluntario))
  end

  test "should destroy doacao_voluntario" do
    assert_difference('DoacaoVoluntario.count', -1) do
      delete :destroy, id: @doacao_voluntario
    end

    assert_redirected_to doacao_voluntarios_path
  end
end

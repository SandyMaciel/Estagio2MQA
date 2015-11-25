class DoacaoVoluntariosController < ApplicationController
  before_action :set_doacao_voluntario, only: [:show, :edit, :update, :destroy]

  # GET /doacao_voluntarios
  # GET /doacao_voluntarios.json
  def index
    @doacao_voluntarios = DoacaoVoluntario.all
  end

  # GET /doacao_voluntarios/1
  # GET /doacao_voluntarios/1.json
  def show
  end

  # GET /doacao_voluntarios/new
  def new
    @doacao_voluntario = DoacaoVoluntario.new
  end

  # GET /doacao_voluntarios/1/edit
  def edit
  end

  # POST /doacao_voluntarios
  # POST /doacao_voluntarios.json
  def create
    @doacao_voluntario = DoacaoVoluntario.new(doacao_voluntario_params)

    respond_to do |format|
      if @doacao_voluntario.save
        format.html { redirect_to @doacao_voluntario, notice: 'Voluntario cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @doacao_voluntario }
      else
        format.html { render :new }
        format.json { render json: @doacao_voluntario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doacao_voluntarios/1
  # PATCH/PUT /doacao_voluntarios/1.json
  def update
    respond_to do |format|
      if @doacao_voluntario.update(doacao_voluntario_params)
        format.html { redirect_to @doacao_voluntario, notice: 'Voluntario editado com sucesso.' }
        format.json { render :show, status: :ok, location: @doacao_voluntario }
      else
        format.html { render :edit }
        format.json { render json: @doacao_voluntario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doacao_voluntarios/1
  # DELETE /doacao_voluntarios/1.json
  def destroy
    @doacao_voluntario.destroy
    respond_to do |format|
      format.html { redirect_to doacao_voluntarios_url, notice: 'Voluntario deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doacao_voluntario
      @doacao_voluntario = DoacaoVoluntario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doacao_voluntario_params
      params.require(:doacao_voluntario).permit(:instuicao_id, :funcao, :descricao, :domingo, :segunda, :terca, :quarta, :quinta, :sexta, :sabado, :horario_inicial, :horario_final)
    end
end

class DoacaoCaptacaosController < ApplicationController
  before_action :set_doacao_captacao, only: [:show, :edit, :update, :destroy]

  # GET /doacao_captacaos
  # GET /doacao_captacaos.json
  def index
    @doacao_captacaos = DoacaoCaptacao.all
  end

  # GET /doacao_captacaos/1
  # GET /doacao_captacaos/1.json
  def show
  end

  # GET /doacao_captacaos/new
  def new
    @doacao_captacao = DoacaoCaptacao.new
  end

  # GET /doacao_captacaos/1/edit
  def edit
  end

  # POST /doacao_captacaos
  # POST /doacao_captacaos.json
  def create
    @doacao_captacao = DoacaoCaptacao.new(doacao_captacao_params)

    respond_to do |format|
      if @doacao_captacao.save
        format.html { redirect_to @doacao_captacao, notice: 'Captação criada com sucesso.' }
        format.json { render :show, status: :created, location: @doacao_captacao }
      else
        format.html { render :new }
        format.json { render json: @doacao_captacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doacao_captacaos/1
  # PATCH/PUT /doacao_captacaos/1.json
  def update
    respond_to do |format|
      if @doacao_captacao.update(doacao_captacao_params)
        format.html { redirect_to @doacao_captacao, notice: 'Captação atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @doacao_captacao }
      else
        format.html { render :edit }
        format.json { render json: @doacao_captacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doacao_captacaos/1
  # DELETE /doacao_captacaos/1.json
  def destroy
    @doacao_captacao.destroy
    respond_to do |format|
      format.html { redirect_to doacao_captacaos_url, notice: 'Captação deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doacao_captacao
      @doacao_captacao = DoacaoCaptacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doacao_captacao_params
      params.require(:doacao_captacao).permit(:instuicao_id, :titulo, :objetivo, :meta)
    end
end

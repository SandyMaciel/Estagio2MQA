class DoacaoFinanceirasController < ApplicationController
  before_action :set_doacao_financeira, only: [:show, :edit, :update, :destroy]

  # GET /doacao_financeiras
  # GET /doacao_financeiras.json
  def index
    @doacao_financeiras = DoacaoFinanceira.all
  end

  # GET /doacao_financeiras/1
  # GET /doacao_financeiras/1.json
  def show
  end

  # GET /doacao_financeiras/new
  def new
    @doacao_financeira = DoacaoFinanceira.new
  end

  # GET /doacao_financeiras/1/edit
  def edit
  end

  # POST /doacao_financeiras
  # POST /doacao_financeiras.json
  def create
    @doacao_financeira = DoacaoFinanceira.new(doacao_financeira_params)

    respond_to do |format|
      if @doacao_financeira.save
        format.html { redirect_to @doacao_financeira, notice: 'Doacao financeira was successfully created.' }
        format.json { render :show, status: :created, location: @doacao_financeira }
      else
        format.html { render :new }
        format.json { render json: @doacao_financeira.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doacao_financeiras/1
  # PATCH/PUT /doacao_financeiras/1.json
  def update
    respond_to do |format|
      if @doacao_financeira.update(doacao_financeira_params)
        format.html { redirect_to @doacao_financeira, notice: 'Doacao financeira was successfully updated.' }
        format.json { render :show, status: :ok, location: @doacao_financeira }
      else
        format.html { render :edit }
        format.json { render json: @doacao_financeira.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doacao_financeiras/1
  # DELETE /doacao_financeiras/1.json
  def destroy
    @doacao_financeira.destroy
    respond_to do |format|
      format.html { redirect_to doacao_financeiras_url, notice: 'Doacao financeira was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doacao_financeira
      @doacao_financeira = DoacaoFinanceira.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doacao_financeira_params
      params.require(:doacao_financeira).permit(:instuicao_id, :nome, :banco, :titular, :agencia, :conta, :cnpj)
    end
end

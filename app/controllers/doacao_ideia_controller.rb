class DoacaoIdeiaController < ApplicationController
  before_action :set_doacao_ideium, only: [:show, :edit, :update, :destroy]

  # GET /doacao_ideia
  # GET /doacao_ideia.json
  def index
    @doacao_ideia = DoacaoIdeium.all
  end

  # GET /doacao_ideia/1
  # GET /doacao_ideia/1.json
  def show
  end

  # GET /doacao_ideia/new
  def new
    @doacao_ideium = DoacaoIdeium.new
  end

  # GET /doacao_ideia/1/edit
  def edit
  end

  # POST /doacao_ideia
  # POST /doacao_ideia.json
  def create
    @doacao_ideium = DoacaoIdeium.new(doacao_ideium_params)

    respond_to do |format|
      if @doacao_ideium.save
        format.html { redirect_to @doacao_ideium, notice: 'Doacao ideium was successfully created.' }
        format.json { render :show, status: :created, location: @doacao_ideium }
      else
        format.html { render :new }
        format.json { render json: @doacao_ideium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doacao_ideia/1
  # PATCH/PUT /doacao_ideia/1.json
  def update
    respond_to do |format|
      if @doacao_ideium.update(doacao_ideium_params)
        format.html { redirect_to @doacao_ideium, notice: 'Doacao ideium was successfully updated.' }
        format.json { render :show, status: :ok, location: @doacao_ideium }
      else
        format.html { render :edit }
        format.json { render json: @doacao_ideium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doacao_ideia/1
  # DELETE /doacao_ideia/1.json
  def destroy
    @doacao_ideium.destroy
    respond_to do |format|
      format.html { redirect_to doacao_ideia_url, notice: 'Doacao ideium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doacao_ideium
      @doacao_ideium = DoacaoIdeium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doacao_ideium_params
      params.require(:doacao_ideium).permit(:instuicao_id, :descricao, :finalidade)
    end
end
